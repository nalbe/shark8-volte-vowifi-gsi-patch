# VoLTE Patch Bundle - Black Shark 8

Enable VoLTE on a MediaTek MT6789 device running a phh GSI (Android 14) ROM.

**Status: WORKING** - verified on device 2026-09-01. See `PATCH.md` for the full
diagnosis and change history.

## What it is

The MTK modem already completes IMS SIP registration; the Android framework
blocks it because the default carrier config ships
`carrier_volte_available_bool=false`. This bundle patches `framework.jar`
(`CarrierConfigManager.<clinit>`) to force that flag to `true`, delivered as a
KernelSU module.

Verified result:

- `carrier_volte_available_bool = true` (carrier_config)
- IMS registered over LTE (EIREG reg_state=1)
- SST registered=true
- IMS PDN CONNECTED, QCI5, P-CSCF obtained
- isVopsSupported=true
- MMTEL READY

## Targets

- Device: Black Shark 8 (MediaTek MT6789)
- ROM: GSI AP2A.240805.005.F1 (phh, Android 14, 2024-08-24)
- Carrier: MegaFon 250/02
- Root: KernelSU

This is specific to this combination. Treat it as a reference, not a universal
fix.

## Bundle layout

```
framework/              framework-patched.jar, classes3-new.dex,
                        CarrierConfigManager.patched.smali
module/volte_fw/        module template + install.sh (whiteout creation)
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
adb shell dumpsys carrier_config | grep carrier_volte_available_bool
# expect: true
```

Keep Wi-Fi off for LTE IMS on this device; restore with `svc wifi enable`.

## Rollback

Disable or delete the `volte_fw` module in the KernelSU manager and reboot. For
a full factory-state restore, write back the boot partition from a
`boot_a` backup held on the device.

## License

See `PATCH.md`. Provided as-is, for reference and research on your own hardware.
