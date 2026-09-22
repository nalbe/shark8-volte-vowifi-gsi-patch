#!/system/bin/sh
# volte_fw v8 - install-time customization (sourced by the ksud installer).
# The module payload (system/framework jars) is extracted before this runs, so
# every file is already present under $MODPATH. The bundled
# WFC/VoLTE status-bar indicator app (wfc_indicator.apk, com.wfcind.app) is
# NOT auto-installed anymore - it ships in the module for manual install only.
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

echo "=== volte_fw v8 customize.sh $(date '+%F %T') uptime=$(awk '{print int($1)}' /proc/uptime) ===" >> "$LOG"

# Drop the v5/v6 framework.jar overlay (patched CarrierConfigManager defaults).
# Stock framework.jar is what we want from now on; nothing in this module
# replaces it, so without this cleanup /system/framework/framework.jar would
# stay overlaid by the old patched jar.
rm -f "$MODPATH/system/framework/framework.jar"
echo "removed stale framework.jar overlay (stock system jar used again)" >> "$LOG"

echo "indicator apk NOT auto-installed (bundled for manual install only)" >> "$LOG"

echo "=== done (install-time) ===" >> "$LOG"
return 0
