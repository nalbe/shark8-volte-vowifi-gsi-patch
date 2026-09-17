package android.telephony;

/** Compile-time stub, see ServiceState. */
public class NetworkRegistrationInfo {
    public static final int DOMAIN_CS = 1;
    public static final int DOMAIN_PS = 2;
    public static final int TRANSPORT_TYPE_WWAN = 1;
    public static final int TRANSPORT_TYPE_WLAN = 2;
    public boolean isRegistered() { return false; }
    public int getAccessNetworkTechnology() { return 0; }
    public int getRegistrationState() { return 0; }
}