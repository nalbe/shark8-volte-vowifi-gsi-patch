#!/system/bin/sh
# Install for KernelSU/Magisk:
#   1. Copy this module dir to /data/adb/modules/volte_fw (root)
#   2. Push framework/framework-patched.jar into
#      /data/adb/modules/volte_fw/system/framework/framework.jar
#   3. Run this script as root to create REAL overlayfs whiteouts.
#      NOTE: .wh.* files are NOT honored by current KernelSU builds.
#      Native overlayfs whiteouts are char devices with major 0 minor 0.
#   4. Reboot, then verify: ls /system/framework/arm64/ (files must be gone)
#      and: dumpsys carrier_config | grep carrier_volte_available_bool -> true

set -e
FW=/data/adb/modules/volte_fw/system/framework

rm -f "$FW/arm64/boot-framework.art" "$FW/arm64/boot-framework.oat" \
      "$FW/arm64/boot-framework.vdex" "$FW/boot-framework.vdex"

mknod "$FW/arm64/boot-framework.art"  c 0 0
mknod "$FW/arm64/boot-framework.oat"  c 0 0
mknod "$FW/arm64/boot-framework.vdex" c 0 0
mknod "$FW/boot-framework.vdex"       c 0 0

ls -la "$FW"
ls -la "$FW/arm64"
echo "Whiteouts created. Reboot now."