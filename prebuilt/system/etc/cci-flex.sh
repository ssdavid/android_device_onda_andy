# CCI flex 
#!/system/bin/sh

#install libs
export LD_LIBRARY_PATH=/system/flex/lib:${LD_LIBRARY_PATH}

#install apks
APKS=`ls /system/flex/app`
for apk in ${APKS}
do
#echo ${apk}
ln -s /system/flex/app/${apk} /system/app/${apk}
done

#install framework
FRAMEWORKS=`ls /system/flex/framework`
for framework in ${FRAMEWORKS}
do
#echo ${framework}
ln -s /system/flex/framework/${framework} /system/framework/${framework}
done

#install etc permissions
PERMISSIONS=`ls /system/flex/etc/permissions`
for permissions in ${PERMISSIONS}
do
#echo ${permissions}
ln -s /system/flex/etc/permissions/${permissions} /system/etc/permissions/${permissions}
done

#cehck updatecmds folder
if ls /system/flex/etc/updatecmds
then
 ln -s /system/flex/etc/updatecmds /system/etc/updatecmds
fi

#install ringtones
mount -o remount,rw -t yaffs2 /dev/block/mtdblock3 /system
RINGTONES=`ls /system/flex/audio/ringtones`
for ringtone in ${RINGTONES}
do
    #echo ${ringtone}
    #if [ ! -f /system/media/audio/ringtones/${ringtone} ]
    #then
        cat /system/flex/audio/ringtones/${ringtone} > /system/media/audio/ringtones/${ringtone}
    #fi
done
#install touch firmware
#cat /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/update_enable
#echo 1 > /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/isp_ctrl
#cat /system/flex/panel.cfg > /sys/devices/i2c-0/0-0064/panel_config
#cat /system/flex/autotune.bin > /sys/devices/i2c-0/0-0064/flash
#echo 0 > /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/isp_ctrl
#echo 1 1 0x0b 0x1c 0x40 0xc0 600 800 > /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/autotune_en
#echo 1 > /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/isp_ctrl
#cat /system/flex/touch_panel.bin > /sys/devices/i2c-0/0-0064/flash
#echo 0 > /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/isp_ctrl
cat /sys/devices/i2c-0/0-0064/sitronix_ts_attrs/reset_fw
echo "End firmware update"
# HW feature permissions
projid=`cat /proc/project_id`
case "$projid" in
    "CAP8")
        ln -s /system/etc/hwfeature/handheld_core_hardware_cap.xml /system/etc/permissions/handheld_core_hardware.xml ;;
    "CAP6")
        ln -s /system/etc/hwfeature/handheld_core_hardware_cap6.xml /system/etc/permissions/handheld_core_hardware.xml ;;
    "K4")
        ln -s /system/etc/hwfeature/handheld_core_hardware_k4.xml /system/etc/permissions/handheld_core_hardware.xml ;;
    "C4")
        ln -s /system/etc/hwfeature/handheld_core_hardware_c4.xml /system/etc/permissions/handheld_core_hardware.xml ;;
    "K5")
        ln -s /system/etc/hwfeature/handheld_core_hardware_k5.xml /system/etc/permissions/handheld_core_hardware.xml ;;
    "CAP2")
        ln -s /system/etc/hwfeature/handheld_core_hardware_cap2.xml /system/etc/permissions/handheld_core_hardware.xml ;;
    "CA23")
        ln -s /system/etc/hwfeature/handheld_core_hardware_cap2.xml /system/etc/permissions/handheld_core_hardware.xml ;;
esac
mount -o remount,ro -t yaffs2 /dev/block/mtdblock3 /system
