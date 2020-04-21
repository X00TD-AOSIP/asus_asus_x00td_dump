#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55235884:273d9a6215e27ba7628c5356f38840e842e389c8; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51180840:733486f09ac964e6dd49207f5890afcbc78e5bb1 EMMC:/dev/block/bootdevice/by-name/recovery 273d9a6215e27ba7628c5356f38840e842e389c8 55235884 733486f09ac964e6dd49207f5890afcbc78e5bb1:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
