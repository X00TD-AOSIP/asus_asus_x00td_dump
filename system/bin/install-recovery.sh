#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55235884:11eca1f1cb05525370d752e4da1d942f5def581a; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51180840:32d19830035d234baa2140d026ec31555c5a5db3 EMMC:/dev/block/bootdevice/by-name/recovery 11eca1f1cb05525370d752e4da1d942f5def581a 55235884 32d19830035d234baa2140d026ec31555c5a5db3:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
