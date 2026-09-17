package android.telephony;

import java.util.concurrent.Executor;

/** Compile-time stub, see ServiceState. */
public class TelephonyManager {
    public int[] getSubscriptionIds() { return new int[0]; }
    public TelephonyManager createForSubscriptionId(int subId) { return this; }
    public ServiceState getServiceState() { return null; }
    public void registerTelephonyCallback(Executor executor, TelephonyCallback callback) {}
}