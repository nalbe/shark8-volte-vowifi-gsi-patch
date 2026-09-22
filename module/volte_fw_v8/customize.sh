#!/system/bin/sh
# volte_fw v8 - install-time customization (sourced by the ksud installer).
# The module payload (system/framework jars) is extracted before this runs, so
# every file is already present under $MODPATH. Also installs the bundled
# WFC/VoLTE status-bar indicator app (com.wfcind.app).
#
# v8: framework.jar patch dropped (phh Treble Settings props
# persist.dbg.volte_avail_ovr / wfc_avail_ovr already force-fit the VoLTE/WFC
# toggle availability in ImsManager before carrier config). Remove the stale
# framework.jar from a previous install so the stock (unpatched) system jar is
# used again - otherwise the old patched jar stays mounted and keeps the boot
# image rebuild (odrefresh) alive. v8 also stops disabling the stock Google
# IWLAN client (com.google.android.iwlan stays enabled, see service.sh).
#
# NOTE: customize.sh is SOURCED (not executed) by the ksud installer - always
# `return`, never `exit`, or the installer shell is killed mid-install.

LOG=/data/local/tmp/volte_fw_install.log
APK="$MODPATH/wfc_indicator.apk"
PKG=com.wfcind.app

echo "=== volte_fw v8 customize.sh $(date '+%F %T') uptime=$(awk '{print int($1)}' /proc/uptime) ===" >> "$LOG"

# Drop the v5/v6 framework.jar overlay (patched CarrierConfigManager defaults).
# Stock framework.jar is what we want from now on; nothing in this module
# replaces it, so without this cleanup /system/framework/framework.jar would
# stay overlaid by the old patched jar.
rm -f "$MODPATH/system/framework/framework.jar"
echo "removed stale framework.jar overlay (stock system jar used again)" >> "$LOG"

if [ -f "$APK" ]; then
    i=0
    while [ $i -lt 30 ]; do
        if pm install -r "$APK" >> "$LOG" 2>&1; then
            echo "indicator apk installed ($PKG)" >> "$LOG"
            pm grant "$PKG" android.permission.POST_NOTIFICATIONS >> "$LOG" 2>&1
            pm grant "$PKG" android.permission.READ_PHONE_STATE >> "$LOG" 2>&1
            break
        fi
        i=$((i+1))
        sleep 2
    done
    if [ $i -ge 30 ]; then
        echo "indicator apk install FAILED after $i tries (continuing)" >> "$LOG"
    fi
else
    echo "wfc_indicator.apk not in module - skipped" >> "$LOG"
fi

echo "=== done (install-time) ===" >> "$LOG"
return 0
