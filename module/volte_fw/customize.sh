#!/system/bin/sh
# volte_fw v5 - install-time customization.
# v2 was pushed by hand; v3+ is a proper ksud module zip.
# customize.sh runs INSIDE the ksud installer staging (files not yet in
# $MODDIR) - so this script only logs, does not touch module files.

LOG=/data/local/tmp/volte_fw_install.log
echo "=== volte_fw v5 customize.sh $(date '+%F %T') uptime=$(awk '{print int($1)}' /proc/uptime) ===" >> "$LOG"
echo "=== done (install-time only, no-op by design) ===" >> "$LOG"
exit 0