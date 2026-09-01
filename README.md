# VoLTE + VoWiFi Patch Bundle - Black Shark 8

Enable VoLTE and VoWiFi (Wi-Fi Calling / IWLAN) on a MediaTek MT6789 device
running a phh GSI (Android 14) ROM.

**Status: WORKING** - verified on device 2026-09-01. See `PATCH.md` for the full
diagnosis and change history.

## What it is

The MTK modem already completes IMS SIP registration; the Android framework
blocks it because the default carrier config ships:
- `carrier_volte_available_bool=false` (blocks VoLTE)
- `carrier_wfc_ims_available_bool=false` + `carrier_default_wfc_ims_enabled_bool=false`
  (blocks Wi-Fi Calling)

This bundle patches `framework.jar` (`CarrierConfigManager.<clinit>`) to force
those flags to `true`, delivered as a KernelSU module. At boot a `service.sh`
additionally applies the runtime state the MTK IMS stack needs (persist prop,
siminfo `wfc_ims_*`, global settings, carrier-config overrides).

Verified result (VoLTE):

- `carrier_volte_available_bool = true` (carrier_config)
- IMS registered over LTE (EIREG reg_state=1)
- SST registered=true
- IMS PDN CONNECTED, QCI5, P-CSCF obtained
- isVopsSupported=true, MMTEL READY

Verified result (VoWiFi):

- `carrier_wfc_ims_available_bool = true`, `carrier_default_wfc_ims_enabled_bool = true`
- MTK QNS: `isWfcEnabledByUser:true`
- IMS PDN CONNECTED via WLAN/IWLAN (ipsec1, P-CSCF obtained, validation success)
- `+EIREG: 1,0,5` -> reg_state=1 (IMS registered on IWLAN)
- MMTEL READY, `getRilDataRadioTechnology=18(IWLAN)`, `mIsIwlanPreferred=true`

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
framework/              framework-patched.jar (v2, WFC + VoLTE),
                        classes3-wfc.dex, CarrierConfigManager.patched.smali
module/volte_fw/        module template + install.sh (whiteout creation) +
                        service.sh (per-boot runtime state)
tools/                  baksmali 3.0.7, smali 3.0.7, dexlib2 3.0.7 fat jars
PATCH.md                full diagnosis, build steps, install/rollback
```

## Quick start

```sh
# device, as root
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