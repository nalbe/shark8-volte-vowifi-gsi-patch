# VoLTE + VoWiFi Patch Bundle - Black Shark 8 (MTK MT6789, phh GSI Android 14, MegaFon 250/02)

Status: WORKING (VoLTE + VoWiFi), verified on device 2026-09-01.
Device: Black Shark 8 (MTK MT6789), GSI AP2A.240805.005.F1 (phh, Android 14, 2024-08-24).

## Result (VoLTE)

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

## Result (VoWiFi / WFC / IWLAN)

VoWiFi enabled. IMS registered over Wi-Fi (IWLAN):
- carrier_wfc_ims_available_bool=true, carrier_default_wfc_ims_enabled_bool=true
  (+ carrier_wfc_supports_wifi_only_bool=true) - via framework default AND cc override
- MTK QNS: isWfcEnabledByUser:true, evaluate isAllowed for transportType:WLAN
- IMS PDN CONNECTED via WLAN/IWLAN (ipsec1, addr 12.224.4.243/28, P-CSCF
  10.153.5.128/10.153.137.176, validation success, fail cause NONE)
- +EIREG: 1,0,5 -> reg_state=1 (IMS registered on IWLAN), PS WLAN HOME/IWLAN
- setImsRegistrationState: {registered=true mImsRegistrationOnOff=true}
- DC-ims onAvailable: [type: MOBILE[IWLAN], state: CONNECTED]
- MMTEL READY, getRilDataRadioTechnology=18(IWLAN), mIsIwlanPreferred=true

### VoWiFi root cause and fix

The MTK IWLAN data path itself works from a clean state (IKEv2 tunnel up,
IMS PDN on ipsec1) - the blocker was the Android/MTK config:

1. WFC toggle stored in siminfo (wfc_ims_enabled=0) - MTK QNS reads
   isWfcEnabledByUser from it; a content update to 1 only takes effect after
   reboot. Verified: after reboot QNS logged isWfcEnabledByUser:true.
2. persist.vendor.mtk.wfc.enable=0 - MTK IWLAN wedge. Fixed by setting 1
   (modem normalizes to 3 after reboot).
3. carrier config carrier_wfc_ims_available_bool=false - framework WFC gate.
   Fixed via default patch + cmd phone cc set-value override.
4. settings global wfc_ims_enabled/wfc_ims_mode primed as fallback.

Applied via service.sh on every boot so it survives reboots and reflashes.

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
   baksmali 3.0.7. Requires the API flag: `assemble dex3 -a 34 -o classes3.dex`
   (without `-a` the assembler dies on "mismatched tree node" and emits
   nothing even though it exits 0 - found again at 16:54 while rebuilding).
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

### 16:54 - VoWiFi (v2)

IMPORTANT build note discovered while rebuilding: `smali assemble` on this dex
tree FAILS without an explicit API level - thousands of
"mismatched tree node: I_ORDERED_METHOD_ITEMS expecting I_FIELDS" errors and NO
output dex, yet exit code 0. The original v1 build must have used
`-a 34` (the vanilla GSI is API 34). Correct command:
  java -jar smali-3.0.7-dirty-fat.jar assemble dex3 -a 34 -o classes3-wfc.dex

Patched CarrierConfigManager.<clinit> WFC defaults false->true (same v4->v3
technique as VoLTE):
- carrier_wfc_ims_available_bool = true
- carrier_wfc_supports_wifi_only_bool = true
- carrier_default_wfc_ims_enabled_bool = true
(carrier_default_wfc_ims_mode_int already 2 = WIFI_PREFERRED in stock.)

Rebuilt classes3-wfc.dex (8,864,068 B), rebuilt framework-patched.jar
(39,783,920 B, jar c0f STORE). classes 1,2,4,5 byte-identical with v1 jar;
classes3 changed as intended (verified by baksmali round-trip:
volte=true, wfc available/supports/default_enabled all true).

Added module service.sh which applies per-boot:
- setprop persist.vendor.mtk.wfc.enable 1
- settings put global wfc_ims_enabled 1 / wfc_ims_mode 2
- content update siminfo wfc_ims_enabled=1 wfc_ims_mode=2 for every _id
- cmd phone cc set-value -s <1,2> -p carrier_wfc_* plus
  carrier_default_wfc_ims_enabled_bool / carrier_wfc_supports_wifi_only_bool
  (with a retry loop for `cmd phone` readiness, log
  /data/local/tmp/wfc_service.log)

On-device VoWiFi verified after reboot: QNS isWfcEnabledByUser:true, IMS PDN
CONNECTED via WLAN/IWLAN (ipsec1), EIREG 1,0,5 reg_state=1, MMTEL READY,
RAT=18(IWLAN), mIsIwlanPreferred=true.

### Root-cause checksums learned along the way

- true stock: fw_jar/classes3.dex 8,761,968 B, CarrierConfigManager has
  volte=false, wfc=false (all v4)
- v1 jar classes3: 8,864,068 B, volte=true (v3), wfc=false (v4)
- v2 jar classes3 (classes3-wfc.dex): 8,864,068 B, volte=true + wfc all true
  (v3)
- fwpatch-root classes3.dex / classes3-new.dex / fw_jar_new/classes3.dex are
  all the v1 REBUILT dex and share hash 064EF...; do not mistake them for
  stock. Stock is under fw_jar/.

## Sleep measurement note

MTK device on USB power does not enter deep sleep (stay_on_while_plugged_in=15,
no autosleep in the kernel). Suspend was blocked by charging; a real deep-sleep
benchmark requires running on battery (unplug the cable). wakeup_sources data
were captured; the run can be repeated without the cable.

## Install / rollback

Install (volte_fw):
  - push module/volte_fw to /data/adb/modules/volte_fw (root) - module now
    contains service.sh (per-boot WFC/VoLTE runtime state, idempotent)
  - put framework/framework-patched.jar at
    /data/adb/modules/volte_fw/system/framework/framework.jar
  - run module/volte_fw/install.sh (creates EMPTY-REGULAR-FILE shadows of
    the boot-image artifacts, NOT char-device whiteouts)
  - reboot
  - verify: ls -l /system/framework/arm64/boot-framework.* shows 0 bytes;
    dumpsys carrier_config | grep carrier_volte_available_bool -> true;
    dumpsys carrier_config | grep carrier_wfc_ims_available_bool -> true;
    cat /data/local/tmp/wfc_service.log (service.sh ran)

IMPORTANT (KernelSU 0.9.4): the overlay builder SKIPS a module whose
system/ tree contains char-device whiteouts (mknod c 0 0). Use empty
regular files instead. When the KSU overlay mounts, the 0-byte files
shadow the stock boot-framework.{art,oat,vdex}, forcing ART to fall
back to interpreting the patched jar. Files to shadow:
  - system/framework/arm64/boot-framework.art
  - system/framework/arm64/boot-framework.oat
  - system/framework/arm64/boot-framework.vdex
  - system/framework/boot-framework.vdex

CONFIRMED WORKING 2026-09-02 (VoWiFi, live call):
the live call the user placed and talked on ran over IWLAN
(VoWiFi), because Wi-Fi was ON at the time. Current state with
Wi-Fi ON: IMS PDN "PHH IMS" (ims APN) is CONNECTED over
transport WLAN / network type IWLAN on interface ipsec1 with
P-CSCF obtained and network validation success. ServiceState:
getRilDataRadioTechnology=18(IWLAN), mIsIwlanPreferred=true.
Both test calls in dumpsys telecom carried ImsReasonInfo in
DisconnectCause (IMS-signaled sessions). Talk audio confirmed by
the user.

VoLTE (calls over LTE with Wi-Fi OFF) is NOT yet verified by a
live call in this session. The stack reaches IMS REGISTERED on
LTE (reg_state=1, rat=0, tech 0) when Wi-Fi is off, and voice RAT
holds LTE with isVopsSupported=true -- signal that VoLTE would
work -- but a dedicated call with Wi-Fi radio-disconnected has
not been tested. To verify: turn Wi-Fi OFF (svc wifi disable),
then place a call and confirm voice stays on LTE with no CSFB.

Rollback:
  - delete or disable module volte_fw in the KSU manager
  - restore the boot partition from a boot_a backup if held on the device
    (/data/local/tmp/boot_a_backup.img) via dd

Cautions after device reboot:
  - SIM asks for PIN (enter on screen or via adb)
  - adb root is lost, re-run it
  - Wi-Fi must stay off for LTE IMS on the VoLTE-only setup; with VoWiFi
    enabled the IMS stack prefers IWLAN when Wi-Fi is present
  - restore Wi-Fi with: svc wifi enable

## v3 fix (2026-09-16) - first-boot bootloop root cause

The v2 module (0-byte shadows + patched jar) caused a guaranteed bootloop on
the FIRST boot after ANY `ksud module install` (3/3 reproductions, also
triggered by installing an unrelated module like led_hal_root). Root cause:

- On first boot after a module install, KSU rebuilds the /system overlay and
  ART re-validates the boot classpath.
- The 0-byte `boot-framework.{art,oat,vdex}` shadows make ART fail with
  "boot-framework.oat is too short to be a valid ELF" / "Bad checksum" on
  `framework.jar!classes4.dex` -> `RuntimeInit` JNI abort -> zygote32/64 crash
  loop. Subsequent boots were clean only because ART served from its cached
  image; the first overlay rebuild always tripped it.
- v3 module = patched `framework.jar` ONLY, no shadow files at all, proper
  `customize.sh` (no-op logger), installed as a normal `ksud module install`
  zip. VERIFIED 2026-09-16: first boot after install clean, carrier_config
  flags all true, QNS `isWfcEnabledByUser:true`. ART tolerates the patched jar
  on overlay with stock boot images present.

Build v3 zip (Windows): stage module.prop + service.sh + customize.sh +
system/framework/framework.jar (patched), then
`tar.exe -a -cf volte_fw-v3.zip *` (Compress-Archive corrupts paths).
Install: `ksud module install /data/local/tmp/volte_fw-v3.zip` then reboot.
NOTE: `ksud module install` stages the module into modules_update.img; it
lands in /data/adb/modules only after the first boot commit.

Rollback from any bootloop state:
- `adb root`; `touch /data/adb/modules/volte_fw/disable`; reboot.

## v5 (2026-09-16) - isVowifiEnabled patch + disabling the stock Google IWLAN client

Two additions on top of v3 (both in `module/volte_fw`, module.prop bumped to v5):

1. Patched `telephony-common.jar` - `ImsPhoneCallTracker.isVowifiEnabled`.
   The IWLAN-capability check no longer requires `getImsRegistrationTech==IWLAN`
   (smali-level patch on the same class, shipped as
   `system/framework/telephony-common.jar`, 2,136,126 B). The carrier-config
   patch stays in `framework.jar` (`CarrierConfigManager.<clinit>`, unchanged).
2. `service.sh` step 0 disables the resident Google IWLAN client:
   `pm disable-user --user 0 com.google.android.iwlan` (+ kill of a live
   instance). Why: on this MTK GSI the modem hosts its own IMS/ePDG stack (eIMS
   via `epdg_wod` + `volte_stack`) and creates its own `ccmni*` PDN with a
   modem-assigned address, while `com.google.android.iwlan` runs a parallel
   userspace ePDG client (`IwlanDataService`) that creates `ipsec*` tunnels. On
   WiFi re-association both race for the same ePDG address pool; iwlan (fast,
   Connectivity-event driven) usually wins, takes the modem's address, and the
   modem drops its PDN (`reg_state<0>`) -> calls fall back to CS. The modem
   never uses the iwlan tunnel, so the package is dead weight.
   `disable-user` persists across reboots and is idempotent; safe when the
   package is absent (stock MTK ROMs never ship it).

Artifacts:
- `module/volte_fw/system/framework/framework.jar` (39,783,920 B) +
  `telephony-common.jar` (2,136,126 B) - the full overlay payload.
- `wfc_indicator.apk` (~25 KB, AOSP testkey) - the status-bar indicator app,
  staged into the module at build time and installed by `customize.sh`
  (`pm install -r` + runtime permission grants).
- `volte_fw-v5.zip` = module.prop + customize.sh + service.sh + both jars +
  wfc_indicator.apk (built by `build-release.ps1` via `tar.exe -a -cf`; install
  via `ksud module install`). Self-contained: one flash enables IMS and installs
  the indicator app.
- NOTE: `customize.sh` is SOURCED (not executed) by the ksud installer, so it
  must use `return`, never `exit` (an `exit` kills the installer shell).

## Bundle layout

framework/              framework-patched.jar (carrier-config patch, shipped as
                        module system/framework/framework.jar),
                        classes3-wfc.dex, CarrierConfigManager.patched.smali
module/volte_fw/        module tree = the shipped zip payload:
                        customize.sh (installs the bundled indicator apk),
                        module.prop, service.sh (per-boot runtime state +
                        iwlan disable), install.sh (dev helper for the legacy
                        hand-push method) and system/framework/ with both
                        patched jars (framework.jar + telephony-common.jar)
tools/                  baksmali 3.0.7, smali 3.0.7, dexlib2 3.0.7 fat jars
checker/wfc_indicator/  standalone VoLTE/VoWiFi status-bar checker app
                        (sources + build.ps1; apk is bundled into the module)
a16_*.patch             experimental source patches for a custom ROM build
build-release.ps1       builds the single self-contained module zip
volte_fw-v5.zip         built, installable module = IMS patch + indicator app
                        (ksud module install)