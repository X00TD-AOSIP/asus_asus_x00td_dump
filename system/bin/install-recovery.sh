#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:55235884:73c4608a182d31278d70f67e17f448481aeb8fbe; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:51180840:aa2850f7de98cfe15622eb2b6bd9f45aaa7e082d EMMC:/dev/block/bootdevice/by-name/recovery 73c4608a182d31278d70f67e17f448481aeb8fbe 55235884 aa2850f7de98cfe15622eb2b6bd9f45aaa7e082d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
