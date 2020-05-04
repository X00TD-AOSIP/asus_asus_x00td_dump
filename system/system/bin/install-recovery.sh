#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:56968492:3d14012145cba4e1502e9019e7cda0e144a69fc0; then
  applypatch --bonus /system/etc/recovery-resource.dat \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:50738472:19dcc0e1fbab13278dccdfdfd4b3d2d0dec00fd1 \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:56968492:3d14012145cba4e1502e9019e7cda0e144a69fc0 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
