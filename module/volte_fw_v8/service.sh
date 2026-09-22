#!/system/bin/sh
# VoLTE/VoWiFi enablement - applied on every boot (KernelSU/Magisk service.sh).
# Keeps the runtime state that the MTK IMS stack (com.mediatek.ims QNS) and the
# telephony framework need for VoLTE + Wi-Fi Calling on this GSI:
#   - persist.vendor.mtk.wfc.enable must be 1 (MTK IWLAN gate)
#   - siminfo wfc_ims_enabled / wfc_ims_mode per subscription
#   - global settings wfc_ims_enabled / wfc_ims_mode (ImsPhone fallback)
#   - carrier config overrides so the framework sees WFC available
# The resident Google IWLAN client (com.google.android.iwlan) is LEFT ENABLED:
# without it the modem never reports WLAN=HOME, QNS keeps iwlanEnable=false and
# the ePDG tunnel is never built - the IWLAN loop stays broken (regression in
# v5 was the pm disable-user of this package). Keeping it alive closes the loop.
# Idempotent. Plain ASCII. Logs to /data/local/tmp/wfc_service.log

LOG=/data/local/tmp/wfc_service.log
echo "=== wfc_service.sh $(date) ===" >> "$LOG"

# 1. MTK IWLAN gate prop (persist -> survives reboot, value normalizes to 3)
setprop persist.vendor.mtk.wfc.enable 1

# 2. Global settings
settings put global wfc_ims_enabled 1
settings put global wfc_ims_mode 2   # 2 = WIFI_PREFERRED

# 3. siminfo: enable WFC + WiFi-Preferred for every present subscription.
#    MTK QNS reads isWfcEnabledByUser straight from siminfo.
SUBS=""
for row in $(content query --uri content://telephony/siminfo --projection _id 2>/dev/null); do
    case "$row" in
        _id=*) SUBS="$SUBS $(echo "$row" | sed 's/_id=//')" ;;
    esac
done

if [ -z "$SUBS" ]; then
    SUBS="1 2"   # fallback: typical dual-SIM slots
fi

for sub in $SUBS; do
    content update --uri content://telephony/siminfo \
        --bind wfc_ims_enabled:i:1 \
        --bind wfc_ims_mode:i:2 \
        --where "_id=$sub" >> "$LOG" 2>&1
    echo "siminfo updated _id=$sub" >> "$LOG"
done

# 4. Carrier config overrides (persistent) so the framework sees WFC as
#    available + enabled per subscription. `cmd phone cc` needs the phone
#    process; retry until it answers or give up after 60s.
i=0
APPLIED=""
while [ $i -lt 30 ]; do
    OK=1
    for sub in $SUBS; do
        cmd phone cc set-value -s $sub -p carrier_wfc_ims_available_bool true 2>/dev/null || OK=0
        cmd phone cc set-value -s $sub -p carrier_default_wfc_ims_enabled_bool true 2>/dev/null || OK=0
        cmd phone cc set-value -s $sub -p carrier_wfc_supports_wifi_only_bool true 2>/dev/null || OK=0
    done
    if [ $OK -eq 1 ]; then
        APPLIED=yes
        break
    fi
    i=$((i+1))
    sleep 2
done

if [ -n "$APPLIED" ]; then
    echo "carrier cc overrides OK for: $SUBS" >> "$LOG"
else
    echo "carrier cc overrides FAILED after $i retries" >> "$LOG"
fi
echo "=== done ===" >> "$LOG"