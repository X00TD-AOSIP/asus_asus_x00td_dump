#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55235884:c95d8f59a183e31fde791b539240a2e120af978a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51180840:63ade598182084a7264c1b6ba508739a2b7fdd25 EMMC:/dev/block/bootdevice/by-name/recovery c95d8f59a183e31fde791b539240a2e120af978a 55235884 63ade598182084a7264c1b6ba508739a2b7fdd25:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
