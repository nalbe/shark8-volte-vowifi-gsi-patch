package com.wfcind.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;

public class BootReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        if (Intent.ACTION_BOOT_COMPLETED.equals(intent.getAction())) {
            Intent i = new Intent(context, WfcIconService.class);
            i.setAction(WfcIconService.ACTION_START);
            try {
                if (Build.VERSION.SDK_INT >= 26) {
                    context.startForegroundService(i);
                } else {
                    context.startService(i);
                }
            } catch (Throwable t) {
                // ignore: user can open the app to start the indicator
            }
        }
    }
}