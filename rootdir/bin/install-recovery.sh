#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:100663296:8533ad9353df6d5f0ad4b76e9e7e31ad9cff4355; then
  applypatch  \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:67108864:14c1376aa6a42524a755a4952adaafe8479a3f0b \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:100663296:8533ad9353df6d5f0ad4b76e9e7e31ad9cff4355 && \
      log -t recovery "Installing new oplus recovery image: succeeded" && \
      setprop ro.boot.recovery.updated true || \
      log -t recovery "Installing new oplus recovery image: failed" && \
      setprop ro.boot.recovery.updated false
else
  log -t recovery "Recovery image already installed"
  setprop ro.boot.recovery.updated true
fi
