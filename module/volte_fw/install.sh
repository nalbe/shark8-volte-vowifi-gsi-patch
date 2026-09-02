#!/system/bin/sh
# Install for KernelSU/Magisk:
#   1. Copy this module dir to /data/adb/modules/volte_fw (root)
#   2. Push framework/framework-patched.jar into
#      /data/adb/modules/volte_fw/system/framework/framework.jar
#   3. Run this script as root to create the boot-image SHADOW files.
#      NOTE: real overlayfs char-device whiteouts (mknod c 0 0) BREAK
#      KernelSU 0.9.4 overlay builder (module skipped, no mounts).
#      Instead we place EMPTY regular files at the boot-image paths;
#      the KSU overlay then shadows the stock boot-framework.{art,oat,vdex}
#      with 0-byte files, so ART falls back to interpreting the patched jar.
#   4. Reboot, then verify: /system/framework/arm64/boot-framework.art
#      must be 0 bytes, and:
#      dumpsys carrier_config | grep carrier_volte_available_bool -> true
#      dumpsys carrier_config | grep carrier_wfc_ims_available_bool -> true
#      Failing that, radio buffer must show:
#        handleImsEiregInfo: reg_state<1> rat<0> slot<1>  (VoLTE on LTE)
#   5. service.sh applies WFC runtime state on every boot (log:
#      /data/local/tmp/wfc_service.log).

set -e
FW=/data/adb/modules/volte_fw/system/framework

rm -f "$FW/arm64/boot-framework.art" "$FW/arm64/boot-framework.oat" \
      "$FW/arm64/boot-framework.vdex" "$FW/boot-framework.vdex"

mkdir -p "$FW/arm64"
touch "$FW/arm64/boot-framework.art"
touch "$FW/arm64/boot-framework.oat"
touch "$FW/arm64/boot-framework.vdex"
touch "$FW/boot-framework.vdex"

ls -la "$FW"
ls -la "$FW/arm64"
echo "Boot-image shadow files created. Reboot now."
