#!/system/bin/sh
# Install for KernelSU/Magisk (v5):
#   Preferred: install the built zip via ksud module install (see README).
#   Legacy hand-push (no zip): copy this module dir to /data/adb/modules/volte_fw,
#   then reboot. The patched jars ship ready-to-use in system/framework/
#   (framework.jar + telephony-common.jar) - no boot-image shadow files are
#   needed, v3 proved ART interprets the patched jar on this GSI.
# service.sh applies per-boot runtime state and disables the resident Google
# IWLAN client (com.google.android.iwlan) so it cannot race the modem eIMS
# client for the ePDG address pool on WiFi re-association.

echo "framework.jar + telephony-common.jar installed as overlay."
echo "No boot-image shadow files needed (v3 proved ART interprets the jar on this GSI)."
echo "Reboot now."