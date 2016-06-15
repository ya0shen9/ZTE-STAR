#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:14536704:ac72ad0720adc0ec39179b6a0959cd5952925873; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:12740608:092e54fb55f6e4bfcf4c081a856ec581abaa8c56 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery ac72ad0720adc0ec39179b6a0959cd5952925873 14536704 092e54fb55f6e4bfcf4c081a856ec581abaa8c56:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
