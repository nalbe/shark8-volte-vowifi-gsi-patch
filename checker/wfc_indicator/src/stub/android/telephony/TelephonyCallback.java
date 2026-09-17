package android.telephony;

/** Compile-time stub, see ServiceState. */
public class TelephonyCallback {
    public void onServiceStateChanged(ServiceState state) {}
    public void onServiceStateChanged(int subId, ServiceState state) {}
    public void onDataConnectionStateChanged(int state, int networkType) {}
    public void onDataConnectionStateChanged(int subId, int state, int networkType) {}
}