package com.wfcind.app;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.IBinder;
import android.telephony.NetworkRegistrationInfo;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyCallback;
import android.telephony.TelephonyManager;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/**
 * VoLTE / VoWiFi indicator.
 *
 * Truth source: the IMS data network visible to ConnectivityManager, plus the
 * state of Wi-Fi. The MTK modem owns its IMS stack (eIMS: ePDG tunnel on a
 * ccmni* interface, own SIP registration, P-CSCF). On this GSI the framework
 * reports that PDN as MOBILE[LTE] with NET_CAPABILITY_IMS regardless of the
 * actual transport - WLAN registration in ServiceState is UNKNOWN because the
 * Google IWLAN client (com.google.android.iwlan) that used to fabricate it is
 * disabled by design (it raced the modem for the ePDG address pool).
 *
 * So:
 *   VoWiFi  = IMS network exists  AND Wi-Fi is up
 *   VoLTE   = IMS network exists  AND Wi-Fi is down (or absent), or LTE reg
 *   (none)  = no IMS network
 *
 * The notification body carries the IMS interface + main address for parity.
 */

public class WfcIconService extends Service {

    private static final int NOTIF_ID = 1;
    private static final String CHANNEL_ID = "wfc_indicator";
    public static final String ACTION_START = "com.wfcind.app.START";

    private static final int MODE_NONE = 0;
    private static final int MODE_WFC = 1;
    private static final int MODE_VOLTE = 2;

    private TelephonyManager mTm;
    private SubscriptionManager mSm;
    private ConnectivityManager mCm;
    private NotificationManager mNm;
    private Executor mExec;
    private volatile android.util.Log mL = null;

    private final TelephonyCallback mTcb = new TelephonyCallback() {
        @Override
        public void onServiceStateChanged(ServiceState state) {
            refresh();
        }

        @Override
        public void onServiceStateChanged(int subId, ServiceState state) {
            refresh();
        }

        @Override
        public void onDataConnectionStateChanged(int state, int networkType) {
            refresh();
        }

        @Override
        public void onDataConnectionStateChanged(int subId, int state, int networkType) {
            refresh();
        }
    };
    private final ConnectivityManager.NetworkCallback mNetCb =
            new ConnectivityManager.NetworkCallback() {
                @Override
                public void onCapabilitiesChanged(Network network,
                        NetworkCapabilities networkCapabilities) {
                    if (isIms(networkCapabilities)) refresh();
                }

                @Override
                public void onAvailable(Network network) {
                    refresh();
                }

                @Override
                public void onLost(Network network) {
                    refresh();
                }
            };

    @Override
    public void onCreate() {
        super.onCreate();
        mTm = (TelephonyManager) getSystemService(Context.TELEPHONY_SERVICE);
        mSm = (SubscriptionManager) getSystemService(Context.TELEPHONY_SUBSCRIPTION_SERVICE);
        mCm = (ConnectivityManager) getSystemService(Context.CONNECTIVITY_SERVICE);
        mNm = (NotificationManager) getSystemService(Context.NOTIFICATION_SERVICE);
        mExec = Executors.newSingleThreadExecutor();

        NotificationChannel ch = new NotificationChannel(CHANNEL_ID,
                getString(R.string.ns_title), NotificationManager.IMPORTANCE_MIN);
        ch.setShowBadge(false);
        mNm.createNotificationChannel(ch);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        registerAll();
        refresh();
        return START_STICKY;
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    private void registerAll() {
        for (int id : subIds()) {
            listen(id);
        }
        try {
            mCm.registerNetworkCallback(
                    new android.net.NetworkRequest.Builder()
                            .addCapability(NetworkCapabilities.NET_CAPABILITY_IMS)
                            .build(), mNetCb);
        } catch (Throwable t) {
            android.util.Log.e("WfcIcon", "net cb: " + t);
        }
        try {
            // Keep reacting to Wi-Fi state even without an IMS net change.
            mCm.registerNetworkCallback(
                    new android.net.NetworkRequest.Builder()
                            .addTransportType(NetworkCapabilities.TRANSPORT_WIFI)
                            .build(), mNetCb);
        } catch (Throwable t) {
            android.util.Log.e("WfcIcon", "wifi cb: " + t);
        }
    }

    private void listen(int subId) {
        try {
            mTm.createForSubscriptionId(subId).registerTelephonyCallback(mExec, mTcb);
        } catch (Throwable t) {
            // ignore
        }
    }

    private int[] subIds() {
        try {
            List<SubscriptionInfo> subs = mSm.getActiveSubscriptionInfoList();
            if (subs != null && subs.size() > 0) {
                int[] ids = new int[subs.size()];
                for (int i = 0; i < subs.size(); i++) ids[i] = subs.get(i).getSubscriptionId();
                return ids;
            }
        } catch (Throwable t) {
            android.util.Log.e("WfcIcon", "subIds: " + t);
        }
        try {
            int[] ids = mTm.getSubscriptionIds();
            if (ids != null && ids.length > 0) return ids;
        } catch (Throwable t) {
            android.util.Log.e("WfcIcon", "subIds fallback: " + t);
        }
        return new int[0];
    }

    private boolean isIms(NetworkCapabilities nc) {
        return nc != null && nc.hasCapability(NetworkCapabilities.NET_CAPABILITY_IMS);
    }

    /** Returns {network, imsNc} of the active IMS network, or null. */
    private Network findImsNetwork() {
        try {
            Network[] all = mCm.getAllNetworks();
            if (all != null) {
                for (Network n : all) {
                    NetworkCapabilities nc = mCm.getNetworkCapabilities(n);
                    if (isIms(nc)) return n;
                }
            }
        } catch (Throwable t) {
            android.util.Log.e("WfcIcon", "findImsNetwork: " + t);
        }
        return null;
    }

    private boolean wifiUp() {
        Network n = mCm.getActiveNetwork();
        if (n == null) return false;
        NetworkCapabilities nc = mCm.getNetworkCapabilities(n);
        return nc != null && nc.hasTransport(NetworkCapabilities.TRANSPORT_WIFI);
    }

    /** True if the modem reports IMS "registered" over any transport on any sub. */
    private boolean lteRegistered() {
        for (int id : subIds()) {
            try {
                TelephonyManager tm = mTm.createForSubscriptionId(id);
                ServiceState ss = tm.getServiceState();
                if (ss == null) continue;
                NetworkRegistrationInfo wwan = ss.getNetworkRegistrationInfo(
                        NetworkRegistrationInfo.DOMAIN_PS,
                        NetworkRegistrationInfo.TRANSPORT_TYPE_WWAN);
                if (wwan != null && wwan.isRegistered()) return true;
            } catch (Throwable t) {
                android.util.Log.e("WfcIcon", "lteRegistered: " + t);
            }
        }
        return false;
    }

    private void refresh() {
        long t0 = System.currentTimeMillis();
        Network imsNet = findImsNetwork();
        boolean wifi = wifiUp();
        boolean lte = lteRegistered();

        int mode = MODE_NONE;
        String iface = "?";
        String addr = "";

        if (imsNet != null) {
            try {
                LinkProperties lp = mCm.getLinkProperties(imsNet);
                if (lp != null) {
                    iface = lp.getInterfaceName();
                    if (lp.getLinkAddresses() != null && lp.getLinkAddresses().size() > 0) {
                        addr = lp.getLinkAddresses().get(0).getAddress().getHostAddress();
                    }
                }
            } catch (Throwable t) {
                android.util.Log.e("WfcIcon", "lp: " + t);
            }
            if (wifi) {
                mode = MODE_WFC;
            } else {
                mode = MODE_VOLTE;
            }
        } else if (lte) {
            mode = MODE_VOLTE;
        }

        android.util.Log.i("WfcIcon", "mode=" + mode + " imsNet=" + (imsNet != null)
                + " iface=" + iface + " addr=" + addr
                + " wifi=" + wifi + " lte=" + lte + " " + (System.currentTimeMillis() - t0) + "ms");
        showNotification(mode, iface + (addr.isEmpty() ? "" : " " + addr));
    }

    private void showNotification(int mode, String detail) {
        int iconRes;
        String text;
        switch (mode) {
            case MODE_WFC:
                iconRes = R.drawable.ic_wfc;
                text = getString(R.string.wfc_txt);
                break;
            case MODE_VOLTE:
                iconRes = R.drawable.ic_volte;
                text = getString(R.string.volte_txt);
                break;
            default:
                iconRes = R.drawable.ic_blank;
                text = "";
                break;
        }
        if (!detail.equals("?") && text.length() > 0) {
            text = text + " [" + detail + "]";
        }

        Intent i = new Intent(this, MainActivity.class);
        PendingIntent pi = PendingIntent.getActivity(this, 0, i,
                PendingIntent.FLAG_IMMUTABLE);

        Notification n = new Notification.Builder(this, CHANNEL_ID)
                .setSmallIcon(iconRes)
                .setContentTitle(getString(R.string.ns_title))
                .setContentText(text)
                .setOngoing(true)
                .setShowWhen(false)
                .setContentIntent(pi)
                .build();
        n.flags |= Notification.FLAG_NO_CLEAR;

        try {
            if (mode == MODE_NONE) {
                mNm.notify(NOTIF_ID, n);
            } else if (Build.VERSION.SDK_INT >= 29) {
                startForeground(NOTIF_ID, n,
                        android.content.pm.ServiceInfo.FOREGROUND_SERVICE_TYPE_SPECIAL_USE);
            } else {
                startForeground(NOTIF_ID, n);
            }
        } catch (Throwable t) {
            // fallback: keep it a plain notification rather than dying
            mNm.notify(NOTIF_ID, n);
        }
    }
}