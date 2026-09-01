# VoLTE Patch Bundle - Black Shark 8 (MTK MT6789, phh GSI Android 14, MegaFon 250/02)

Status: WORKING, verified on device 2026-09-01.
Device: Black Shark 8 (MTK MT6789), GSI AP2A.240805.005.F1 (phh, Android 14, 2024-08-24).

## Result

VoLTE enabled. IMS registered over LTE:
- carrier_volte_available_bool = true (dumpsys carrier_config, live)
- handleImsEiregInfo: reg_state=1 rat=0 (IMS registered on LTE)
- SST: setImsRegistrationState: {registered=true}
- IMS PDN CONNECTED, WWAN/LTE, ccmni0, QCI5, P-CSCF 10.153.x.x (MegaFon)
- isVopsSupported=true (modem confirms VoLTE possible)
- MMTEL READY (slotId=1 state=READY)

Caveat: vendor.ril.mtk_hvolte_indicator stays 0,0 permanently. On this GSI the
stock RIL never writes this prop even with a live registration (verified at two
separate registrations). Chasing it is pointless; use SST/EIREG/carrier_config
as the real proof.

## Root cause

The MTK modem DOES complete IMS SIP registration (PDN up, P-CSCF obtained,
200 OK, IMPU received). The Android framework blocks it:

1. Default carrier config ships carrier_volte_available_bool=false
   -> MMTEL state=UNAVAILABLE, reason=NO_IMS_SERVICE_CONFIGURED.
2. On AOSP GSI the MTK VolteController/ImsEnablementTracker inside
   com.mediatek.ims is not bound (no carrier-ims stack to drive it).
3. config_device_static_ims_capabilities does NOT add the VOICE cap.

Fix location: make the framework gate open (CarrierConfigManager default),
the modem already does its side.

## Change history

### 09:18 - diagnostics only
Diagnostics only (device/ROM identification, IMS/telephony dumps). No patches.

### 09:44 - legacy CarrierConfig path (superseded)
- Established the root cause above (modem registers, framework blocks).
- Built the legacy CarrierConfig patch path (superseded by the framework patch):
  - carrierpatch/ on the PC: CarrierConfig APK patches with
    R.bool carrier_volte_available_bool=true (+ provisioned), repacked,
    signed with testkey (testkey.keystore).
  - Installed as KSU module volte_override:
    system_ext/priv-app/CarrierConfig/CarrierConfig.apk,
    system_ext/etc/permissions/com.android.carrierconfig.xml,
    product/overlay/VolteFrameworkRRO/VolteFrameworkRRO.apk.
- Finding: carrier-override does NOT reach com.mediatek.ims on this GSI;
  RRO on com.android.carrierconfig only made ImsPhoneCallTracker announce
  voice availability. This drove the decision to patch framework.jar instead.

### 10:57 - MTK IMS enablement analysis
- MTK IMS enablement analysis (ImsEnablementTracker/VolteController, MMTEL
  container ready but voice not announced, static caps no VOICE).
- Runtime experiments only: cmd overlay fabricate
  (config_device_volte_available/vt/wfc), ImsPhoneCallTracker liveness.
- PC artifacts: ccfg.txt/ccfg2.txt, carrier.txt, ccfg_dumps, radio logs,
  telephony_registry.txt, phone dumps. No persistent patches.

### 14:46 - the working patch
THE working patch. Step by step:
1. Tools: stock baksmali/smali 2.5.2 crash on dex 039 (API 34, e.g.
   HiddenApiRestriction Index out of bounds). No ready 3.0.5/3.0.7 binaries
   (Google Maven returns error HTML, JitPack build failed, Apktool 2.9.3 does
   not handle bare dex). Built 3.0.7 from google/smali sources (JDK 17, gradle
   8.5); ANTLR fixed by copying grammars from third_party/ into smali/src.
   Artifacts: tools/baksmali-3.0.7-878d37fe-fat.jar,
   tools/smali-3.0.7-878d37fe-dirty-fat.jar, tools/dexlib2-3.0.7-878d37fe.jar.
2. Full baksmali of classes3.dex (CarrierConfigManager lives in dex 3,
   7099 smali lines) -> dex3/ tree on the PC.
3. Patch: CarrierConfigManager.<clinit>, putBoolean("carrier_volte_available_bool",
   true). Patched source: framework/CarrierConfigManager.patched.smali
   (lines ~1335-1339, value register changed v4=0x0 -> v3=0x1).
4. Rebuilt classes3-new.dex (8,864,068 B) with smali 3.0.7, re-checked with
   baksmali 3.0.7.
5. Rebuilt framework-patched.jar (39,783,920 B) with jar c0f (STORE, matching
   soong_zip; a .NET zip wrapper corrupted the archive; the first attempt was
   an incomplete copy at 14.5 MB). classes 1,2,4,5 byte-identical with stock,
   classes3 is the patched one.
6. KSU module /data/adb/modules/volte_fw with
   system/framework/framework.jar = patched jar + module.prop.
7. Whiteouts: .wh.* files are NOT honored by this KernelSU build (files stayed
   visible and ART kept loading stock oat/vdex). Replaced with NATIVE overlayfs
   whiteouts: mknod c 0 0 char devices for
   system/framework/arm64/boot-framework.{art,oat,vdex} AND
   system/framework/boot-framework.vdex (the real 644,396 B vdex in /system
   that was overriding the patched jar via symlink).
8. The hidden catch - Wi-Fi: with Wi-Fi on, the IMS PDN came up via IWLAN
   (transport WLAN, interface ipsec1, mIsIwlanPreferred=true) and the
   indicator never moved. Wi-Fi off (settings put global wifi_on 0) -> IMS PDN
   moved to LTE (ccmni0, QCI5) -> registration completed.
9. Verified: carrier_config true, EIREG reg_state=1 rat<0>, SST registered=true,
   PDN QCI5 + P-CSCF, isVopsSupported=true, MMTEL READY. Wakelock footprint on
   idle with VoLTE active is small: ccci_imsc 13 wakeups, ccmni_md1 +26.

## Sleep measurement note

MTK device on USB power does not enter deep sleep (stay_on_while_plugged_in=15,
no autosleep in the kernel). Suspend was blocked by charging; a real deep-sleep
benchmark requires running on battery (unplug the cable). wakeup_sources data
were captured; the run can be repeated without the cable.

## Install / rollback

Install (volte_fw):
  - push module/volte_fw to /data/adb/modules/volte_fw (root)
  - put framework/framework-patched.jar at
    /data/adb/modules/volte_fw/system/framework/framework.jar
  - run module/volte_fw/install.sh (creates the char-device whiteouts)
  - reboot
  - verify: ls /system/framework/arm64/ shows nothing;
    dumpsys carrier_config | grep carrier_volte_available_bool -> true

Rollback:
  - delete or disable module volte_fw in the KSU manager
  - restore the boot partition from a boot_a backup if held on the device
    (/data/local/tmp/boot_a_backup.img) via dd

Cautions after device reboot:
  - SIM asks for PIN (enter on screen or via adb)
  - adb root is lost, re-run it
  - Wi-Fi must stay off for LTE IMS; restore with: svc wifi enable

## Bundle layout

framework/              framework-patched.jar (39,783,920 B), classes3-new.dex,
                        CarrierConfigManager.patched.smali
module/volte_fw/        module template + install.sh (whiteout creation)
tools/                  baksmali 3.0.7, smali 3.0.7, dexlib2 3.0.7 fat jars