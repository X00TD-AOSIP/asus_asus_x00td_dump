#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55231788:53b75ef40482f1c96b1dedb4786c345c18c24a11; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51180840:fc5de4ba90e29d0c2c04e26f3c96c0c147aca68a EMMC:/dev/block/bootdevice/by-name/recovery 53b75ef40482f1c96b1dedb4786c345c18c24a11 55231788 fc5de4ba90e29d0c2c04e26f3c96c0c147aca68a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
