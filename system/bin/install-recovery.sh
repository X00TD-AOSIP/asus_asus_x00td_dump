#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:52647212:e4e93933ff1afb2a600051d817ef38fbcdaf1239; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:47682856:755cb99cfb41f38c6c4cece5569bd8ffb4814c99 EMMC:/dev/block/bootdevice/by-name/recovery e4e93933ff1afb2a600051d817ef38fbcdaf1239 52647212 755cb99cfb41f38c6c4cece5569bd8ffb4814c99:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
