#!/system/bin/sh
# volte_fw v5 - install-time customization (sourced by the ksud installer).
# The module payload (system/framework jars) is extracted before this runs, so
# every file is already present under $MODPATH. Also installs the bundled
# WFC/VoLTE status-bar indicator app (com.wfcind.app).
#
# NOTE: customize.sh is SOURCED (not executed) by the ksud installer - always
# `return`, never `exit`, or the installer shell is killed mid-install.

LOG=/data/local/tmp/volte_fw_install.log
APK="$MODPATH/wfc_indicator.apk"
PKG=com.wfcind.app

echo "=== volte_fw v5 customize.sh $(date '+%F %T') uptime=$(awk '{print int($1)}' /proc/uptime) ===" >> "$LOG"

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
