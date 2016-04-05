#!/sbin/sh

if [ ! -e /system/etc/init.d ]; then
  mkdir /system/etc/init.d
  chown -R root.root /system/etc/init.d
  chmod -R 755 /system/etc/init.d
fi;

if [ ! -e /system/su.d ]; then
  mkdir /system/su.d
  chown -R root.root /system/su.d
  chmod -R 755 /system/su.d
fi;

mv /system/etc/sysctl.conf /system/etc/sysctl.conf-bak
mv /system/bin/thermal-engine-hh /system/bin/thermal-engine-hh-bak
mv /system/bin/mpdecision /system/bin/mpdecision-bak
mv /system/lib/hw/power.msm8974.so /system/lib/hw/power.msm8974.so-bak
# mv /system/lib/hw/power.hammerhead.so-bak /system/lib/hw/power.hammerhead.so
