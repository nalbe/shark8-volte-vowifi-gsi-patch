# VoLTE + VoWiFi Patch Bundle - Black Shark 8

Enable VoLTE and VoWiFi (Wi-Fi Calling / IWLAN) on a MediaTek MT6789 device
running a phh GSI (Android 14) ROM.

**Status: WORKING** - verified on device 2026-09-02 (live VoWiFi call, MO + MT,
talked over IWLAN; IMS PDN on ipsec1 via WLAN, getRilDataRadioTechnology=18).
v3 zip install (bootloop fix) verified 2026-09-16; v5 adds the
`ImsPhoneCallTracker.isVowifiEnabled` patch (telephony-common.jar) and disables
the conflicting stock Google IWLAN client (see below). Full history: `PATCH.md`.

## What it is

The MTK modem already completes IMS SIP registration; the Android framework
blocks it because the default carrier config ships:
- `carrier_volte_available_bool=false` (blocks VoLTE)
- `carrier_wfc_ims_available_bool=false` + `carrier_default_wfc_ims_enabled_bool=false`
  (blocks Wi-Fi Calling)

This bundle patches `framework.jar` (`CarrierConfigManager.<clinit>`) to force
those flags to `true` and patches `telephony-common.jar`
(`ImsPhoneCallTracker.isVowifiEnabled`, so the IWLAN capability check no longer
requires `getImsRegistrationTech==IWLAN`), delivered as a KernelSU module. At
boot a `service.sh` additionally applies the runtime state the MTK IMS stack
needs (persist prop, siminfo `wfc_ims_*`, global settings, carrier-config
overrides) and disables the stock Google IWLAN client that could otherwise race
the modem for the ePDG tunnel.

Verified result (VoWiFi - confirmed by live call):

- `carrier_wfc_ims_available_bool = true`, `carrier_default_wfc_ims_enabled_bool = true`
- MTK QNS: `isWfcEnabledByUser:true`
- IMS PDN CONNECTED via WLAN/IWLAN (ipsec1, P-CSCF obtained, validation success)
- `+EIREG: 1,0,5` -> reg_state=1 (IMS registered on IWLAN)
- MMTEL READY, `getRilDataRadioTechnology=18(IWLAN)`, `mIsIwlanPreferred=true`
- live call placed by the user (Wi-Fi ON) talked over IWLAN/VoWiFi; both test
  calls carried ImsReasonInfo in DisconnectCause; audio confirmed

Verified result (VoLTE - IMS registration on LTE, live call not yet recorded):

- `carrier_volte_available_bool = true` (carrier_config)
- IMS registered over LTE (EIREG reg_state=1, rat=0, tech 0)
- SST registered=true
- IMS PDN CONNECTED, QCI5, P-CSCF obtained
- isVopsSupported=true, MMTEL READY
- (note: IMS prefers IWLAN while Wi-Fi is ON; verify VoLTE with Wi-Fi OFF)

## Targets

- Device: Black Shark 8 (MediaTek MT6789)
- ROM: GSI AP2A.240805.005.F1 (phh, Android 14, 2024-08-24)
- Carrier: MegaFon 250/02
- Subscriptions: SIM2 active (subId=2) tested; script covers all subs
- Root: KernelSU

This is specific to this combination. Treat it as a reference, not a universal
fix.

## Bundle layout

```
framework/              framework-patched.jar (carrier-config patch, shipped as
                        module system/framework/framework.jar),
                        classes3-wfc.dex, CarrierConfigManager.patched.smali
module/volte_fw/        module tree = the shipped zip payload:
                        customize.sh (install-time logger, no-op),
                        module.prop, service.sh (per-boot runtime state +
                        iwlan disable), install.sh (dev helper for the legacy
                        hand-push method) and system/framework/ with both
                        patched jars (framework.jar + telephony-common.jar)
tools/                  baksmali 3.0.7, smali 3.0.7, dexlib2 3.0.7 fat jars
checker/wfc_indicator/  standalone VoLTE/VoWiFi status-bar checker app
                        (sources + build.ps1 + prebuilt wfc_indicator_v1.apk)
a16_*.patch             experimental source patches for building a custom ROM
                        (VoLTE/WFC status icons, carrier-config defaults,
                        phh-treble/APN/build fixes)
volte_fw-v5.zip         built, installable module (ksud module install)
PATCH.md                full diagnosis, build steps, install/rollback
```

## Quick start

Download `volte_fw-v5.zip` from the
[latest release](https://github.com/nalbe/shark8-volte-vowifi-gsi-patch/releases)
(or rebuild it yourself - the module tree below is the payload source).

Zip based (v5, recommended - avoids the first-boot bootloop, see PATCH.md):

```sh
# build (optional): stage module/volte_fw minus install.sh (customize.sh +
#        module.prop + service.sh + system/framework/{framework,telephony-common}.jar),
#        then:  tar.exe -a -cf volte_fw-v5.zip *
# device, as root
adb push volte_fw-v5.zip /data/local/tmp/
adb shell /data/adb/ksu/bin/ksud module install /data/local/tmp/volte_fw-v5.zip
adb reboot
```

Legacy push method (v2, causes first-boot bootloop - do not install this way):

```sh
adb push module/volte_fw /data/adb/modules/volte_fw
adb push framework/framework-patched.jar \
    /data/adb/modules/volte_fw/system/framework/framework.jar
adb shell /data/adb/modules/volte_fw/install.sh
adb reboot
```

After boot:

```sh
adb root
adb shell dumpsys carrier_config | grep -E 'carrier_(volte|wfc|default_wfc)'
# expect the patched flags true
adb shell cat /data/local/tmp/wfc_service.log   # runtime state applied
adb shell "cmd phone cc get-value -s 2 carrier_wfc_ims_available_bool"
# expect: true
```

## Stock IWLAN client disabled (com.google.android.iwlan)

The MTK modem hosts its own IMS/ePDG stack (eIMS via `epdg_wod` + `volte_stack`)
and builds its own `ccmni*` PDN with a modem-assigned address. This GSI also
ships a Google userspace IWLAN data service (`com.google.android.iwlan`) that
creates parallel `ipsec*` tunnels. On WiFi re-association both clients race for
the same ePDG address pool; the Google client (fast, Connectivity-event driven)
usually wins, takes the modem's address, and the modem drops its IMS PDN
(`reg_state<0>`) - calls then fall back to CS mid-session.

The modem never uses the iwlan tunnel, so step 0 of `service.sh` disables the
package at every boot (idempotent, survives reboots, safe when the package is
absent - stock MTK ROMs never ship it):

```sh
pm disable-user --user 0 com.google.android.iwlan
```

A live instance is killed too, so it cannot hold stale sockets. With iwlan
disabled the modem owns the ePDG address pool and calls stay on Wi-Fi.

## Status bar icons (WFC / VoLTE) - BLOCKED on ROM signing keys

The icon patch itself is ready (smali patch on the AOSP SystemUI mobile icon
pipeline + vendor vector drawables slotted into dead resources), but the
**patched SystemUI cannot be installed without release keys**:

- SystemUI on this GSI is signed with private key.
- A re-signed APK (AOSP testkey) is rejected by PackageManager at boot scan
  (`Unable to find com.android.systemui/u0`, package never registered, no
  status bar). Signature trust is hardcoded into the ROM at build time.

## Standalone status-bar checker app (WFC / VoLTE icon, no signature needed)

Because the SystemUI icon patch is blocked on ROM signing keys,
`checker/wfc_indicator/` ships a small standalone app (package `com.wfcind.app`)
that runs a foreground service and shows a tiny icon in the status bar:

- `ic_wfc` - Wi-Fi Calling active (PS registration on WLAN transport, i.e.
  `NetworkRegistrationInfo DOMAIN_PS / TRANSPORT_TYPE_WLAN` registered)
- `ic_volte` - IMS-capable LTE (DOMAIN_PS / WWAN registered, access network
  technology 13), shown while Wi-Fi is off
- otherwise a transparent icon (nothing visible)

Detection is event-driven: `TelephonyCallback`
(`onServiceStateChanged`/`onDataConnectionStateChanged` per subscription) +
`ConnectivityManager` network callbacks - no polling. The icon lives in the
RIGHT notification zone (it is a foreground-service notification on a silent
`IMPORTANCE_MIN` channel), not in the system zone left of the signal icons.

Build: `powershell -ExecutionPolicy Bypass -File build.ps1` (needs Android SDK
build-tools 34.0.0, platforms/android-34 and JDK 17; paths at the top of the
script). The shipped `wfc_indicator_v1.apk` is prebuilt and signed with the
AOSP testkey.

Install:

```sh
adb install -r checker/wfc_indicator/wfc_indicator_v1.apk
adb shell pm grant com.wfcind.app android.permission.POST_NOTIFICATIONS
adb shell pm grant com.wfcind.app android.permission.READ_PHONE_STATE
adb shell am start -n com.wfcind.app/.MainActivity
```

The service auto-starts on boot (`BootReceiver`); disable by force-stopping the
app (or `pm disable-user com.wfcind.app`). Verify live state with
`adb shell logcat -d -s WfcIcon`.

Verified on the target device 2026-09-06: WFC icon with Wi-Fi ON, VoLTE icon
with Wi-Fi OFF, live switchover both ways; survives reboot.

Note: on this ROM `ServiceState.getDataNetworkType()` is gone from the
framework, so the app reads `NetworkRegistrationInfo` instead; the compile-time
stubs in `src/stub/` exist only to compile against a stripped `android.jar` and
are replaced by platform classes at runtime.

## Experimental source patches for a custom ROM build (a16_*.patch)

`a16_*.patch` are hunks for building a *custom* AOSP/treble Android 16 ROM where
VoLTE/VoWiFi work out of the box (the runtime module above is the GSI equivalent
of the same idea):

- `a16_frameworks_base_carrierconfig_ims.patch` - same carrier-config default
  flip (volte/wfc) at source level.
- `a16_settingslib_*` + `a16_frameworks_base_disable_bluetooth_default.patch` -
  VoLTE/WFC icons in the SettingsLib/SystemUI mobile-icon pipeline (this bypasses
  the ROM-signing-key blocker from the section above).
- `a16_device_phh_treble_*`, `a16_build_make_apns_aperture_quicksearch.patch`,
  `a16_frameworks_av_property_get_bool_include.patch` - phh-treble board flags,
  IMS config overlay and build/APN tweaks.

Experimental, not yet validated on hardware - reference material for a future
ROM build.

## Notes

- Rebuild of classes3.dex must pass `-a <api>` to smali 3.0.7 (e.g. `-a 34`),
  otherwise the assembler fails with thousands of "mismatched tree node" errors
  and produces no output.
- `service.sh` is idempotent, retries until `cmd phone` is up, and logs to
  `/data/local/tmp/wfc_service.log`.
- `wfc_ims_mode=2` = WiFi Preferred. For WiFi-only set it to `0` in both
  `service.sh` and the siminfo bind.
- Keep `persist.vendor.mtk.wfc.enable=1`; the modem normalizes it to `3`.

## Rollback

Disable or delete the `volte_fw` module in the KernelSU manager and reboot. For
a full factory-state restore, write back the boot partition from a
`boot_a` backup held on the device.

## License

See `PATCH.md`. Provided as-is, for reference and research on your own hardware.