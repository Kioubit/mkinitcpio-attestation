# Initcpio TPM attestation hook
Verify system integrity after start (before decrypting the system partition).

Intended to be used with the associated [android app](https://github.com/Kioubit/tpmTool).

<img src="https://github.com/Kioubit/mkinitcpio-attestation/assets/96532606/7ac492c5-e0b9-42b3-9a62-0338a2000c13" width="200">
<img src="https://github.com/Kioubit/mkinitcpio-attestation/assets/96532606/5b00e355-c6b7-43ff-9156-a343cae836ff" width="200">

## Setup
1) Clone this repository
2) Build and install this package using ``makepgk -si``
3) Enable this initcpio hook in ``/etc/mkinitcpio.conf`` and regenerate the initrd using ``mkinitcpio``
4) Run ``./enroll.sh``
5) Add the displayed public key to the [android app](https://github.com/Kioubit/tpmTool)

## Enabling the hook
The following is an example of how to enable the hook in ``/etc/mkinitcpio.conf``. It must be added after the keyboard and keymap hooks (they need to be added if they are not already enabled).
```diff
- HOOKS=(base udev autodetect microcode modconf kms keyboard keymap block filesystems fsck)
+ HOOKS=(base udev autodetect microcode modconf kms keyboard keymap block attest filesystems fsck)
```
