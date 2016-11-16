#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 14571520 d9c118b2b3e5378c609829e3daadc9775dd05ed0 10612736 8766cdaed8a908a17464e929fbc503460ef545c5
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:14571520:d9c118b2b3e5378c609829e3daadc9775dd05ed0; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10612736:8766cdaed8a908a17464e929fbc503460ef545c5 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery d9c118b2b3e5378c609829e3daadc9775dd05ed0 14571520 8766cdaed8a908a17464e929fbc503460ef545c5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
