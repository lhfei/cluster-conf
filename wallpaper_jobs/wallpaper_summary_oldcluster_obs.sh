#!/bin/bash

############################################################
# This script just be used in 10.180.86.27 Hive Cluster.   #
# ---------------------------------------------------- --- #
# Hive version: 0.10.0                                     #
############################################################
# 
#  Add some obs: 
#    
#    .device_id
#    .imei
#    	.data_sum.sum_phone_source_day
#  		  -- software_version
#  		  -- external_model
#  		  -- group_title
############################################################

current=$(date +%Y%m%d -d -1day)

hive -e "USE temp;"

#壁纸预览次数a、壁纸预览手机数b，人均预览次数（a/b）
echo "##############start load into table PHONE_PREVIEW_SUMMARY "
hive -e "INSERT INTO TABLE temp.phone_preview_summary select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL' and event_id='expose' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL' and event_id='expose' and imei='-' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei;"

#壁纸收藏次数、壁纸收藏手机数
#echo "##############start load into table PHONE_FAVORITES_SUMMARY "
hive -e "INSERT INTO TABLE temp.phone_favorites_summary select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.1' and event_id='download' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.1' and event_id='download' and imei='-' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


#壁纸设置次数、壁纸设置手机数
##echo "##############start load into table PHONE_SETTING_SUMMARY "
hive -e "INSERT INTO TABLE temp.phone_setting_summary select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and imei='-' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


#壁纸设置次数-桌面、壁纸设置手机数-桌面
##echo "##############start load into table PHONE_SETTING_DESKTOP "
hive -e "INSERT INTO TABLE temp.phone_setting_desktop select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and props['type']='desktop' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and imei='-' and props['type']='desktop' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "



#壁纸设置次数-锁屏、壁纸设置手机数-锁屏
##echo "##############start load into table PHONE_SETTING_LOCK "
hive -e "INSERT INTO TABLE temp.phone_setting_lock select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and props['type']='lock' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and imei='-' and props['type']='lock' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "



#壁纸设置次数-同时、壁纸设置手机数-同时
##echo "##############start load into table PHONE_SETTING_ALL "
hive -e "INSERT INTO TABLE temp.phone_setting_all select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and props['type']='both' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and imei='-' and props['type']='both' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


#自动换壁纸开启次数、自动换壁纸开启手机数
##echo "##############start load into table PHONE_RANDOM_OPEN "
hive -e "INSERT INTO TABLE temp.phone_random_open select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.3' and event_id='open' group by event_id, dt,imei union all select count(1) as num,props['imei'] as imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.3' and imei='-' and event_id='open' group by event_id, dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


#自动换壁纸关闭次数、自动换壁纸关闭手机数
##echo "##############start load into table PHONE_RANDOM_CLOSE "
hive -e "INSERT INTO TABLE temp.phone_random_close select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.3' and event_id='close' group by event_id, dt,imei union all select count(1) as num,props['imei'] as imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.3' and imei='-' and event_id='close' group by event_id, dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


#摇一摇换壁纸开启次数、摇一摇换壁纸开启手机数
##echo "##############start load into table PHONE_SHAKING_OPEN "
hive -e "INSERT INTO TABLE temp.phone_shaking_open select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.4' and event_id='open' group by dt, event_id, imei union all select count(1) as num,props['imei'] as imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.4' and imei='-' and event_id='open' group by dt, event_id, props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


#摇一摇换壁纸关闭次数、摇一摇换壁纸关闭手机数
##echo "##############start load into table PHONE_SHAKING_CLOSE "
hive -e "INSERT INTO TABLE temp.phone_shaking_close select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.4' and event_id='close' group by dt, event_id, imei union all select count(1) as num,props['imei'] as imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.4' and imei='-' and event_id='close' group by dt, event_id, props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "

##echo "##############start load into table PHONE_WALLPAPER_SUMMARY "
#-- for Hive abave 0.10
#hive -e "INSERT INTO TABLE temp.phone_wallpaper_summary SELECT p.TOTAL_PREVIEW,p.TOTAL_PREIVEW_FOR_PHONE, (p.TOTAL_PREVIEW/p.TOTAL_PREIVEW_FOR_PHONE) AS AVG_PREVIEW, f.FAVORITE, f.TOTAL_FAVORITE_FOR_PHONE, s.APPLY_ALL, s.PHONE_APPLY_ALL, sd.APPLY_DESKTOP, sd.PHONE_APPLY_DESKTOP, sl.APPLY_LOCK, sl.PHONE_APPLY_LOCK, sa.APPLY_ALL, sa.PHONE_APPLY_ALL, ro.RANDOM_ENABLE, ro.RANDOM_FOR_PHONE, rc.RANDOM_DISABLE, rc.RANDOM_DISABLE_PHONE, so.SHAKING_ENABLE, so.SHAKING_ENABLE_PHONE, sc.SHAKING_DISABLE,sc.SHAKING_DISABLE_PHONE, p.SUMMARY_DATE FROM temp.PHONE_PREVIEW_SUMMARY p, temp.PHONE_FAVORITES_SUMMARY f, temp.PHONE_SETTING_ALL s, temp.PHONE_SETTING_DESKTOP sd, temp.PHONE_SETTING_LOCK sl, temp.PHONE_SETTING_ALL sa, temp.PHONE_RANDOM_OPEN ro , temp.PHONE_RANDOM_CLOSE rc , temp.PHONE_SHAKING_OPEN so, temp.PHONE_SHAKING_CLOSE sc WHERE p.SUMMARY_DATE = f.SUMMARY_DATE AND p.SUMMARY_DATE=s.SUMMARY_DATE AND p.SUMMARY_DATE=sd.SUMMARY_DATE AND p.SUMMARY_DATE=sl.SUMMARY_DATE AND p.SUMMARY_DATE=sa.SUMMARY_DATE AND p.SUMMARY_DATE=ro.SUMMARY_DATE AND p.SUMMARY_DATE=rc.SUMMARY_DATE AND p.SUMMARY_DATE=so.SUMMARY_DATE AND p.SUMMARY_DATE=sc.SUMMARY_DATE AND p.SUMMARY_DATE = '$current'; "
hive -e "INSERT INTO TABLE temp.phone_wallpaper_summary_imei SELECT p.TOTAL_PREVIEW, p.TOTAL_PREIVEW_FOR_PHONE, ( p.TOTAL_PREVIEW / p.TOTAL_PREIVEW_FOR_PHONE ) AS AVG_PREVIEW, f.FAVORITE, f.TOTAL_FAVORITE_FOR_PHONE, s.APPLY_ALL, s.PHONE_APPLY_ALL, sd.APPLY_DESKTOP, sd.PHONE_APPLY_DESKTOP, sl.APPLY_LOCK, sl.PHONE_APPLY_LOCK, sa.APPLY_ALL, sa.PHONE_APPLY_ALL, ro.RANDOM_ENABLE, ro.RANDOM_FOR_PHONE, rc.RANDOM_DISABLE, rc.RANDOM_DISABLE_PHONE, so.SHAKING_ENABLE, so.SHAKING_ENABLE_PHONE, sc.SHAKING_DISABLE, sc.SHAKING_DISABLE_PHONE, p.SUMMARY_DATE, p.IMEI FROM temp.PHONE_PREVIEW_SUMMARY p JOIN temp.PHONE_FAVORITES_SUMMARY f ON p.SUMMARY_DATE = f.SUMMARY_DATE AND p.IMEI = f.IMEI JOIN temp.PHONE_SETTING_ALL s ON p.SUMMARY_DATE = s.SUMMARY_DATE AND p.IMEI = s.IMEI JOIN temp.PHONE_SETTING_DESKTOP sd ON p.SUMMARY_DATE = sd.SUMMARY_DATE AND p.IMEI = sd.IMEI JOIN temp.PHONE_SETTING_LOCK sl ON p.SUMMARY_DATE = sl.SUMMARY_DATE AND p.IMEI = sl.IMEI JOIN temp.PHONE_SETTING_ALL sa ON p.SUMMARY_DATE = sa.SUMMARY_DATE AND p.IMEI = sa.IMEI JOIN temp.PHONE_RANDOM_OPEN ro ON p.SUMMARY_DATE = ro.SUMMARY_DATE AND p.IMEI = ro.IMEI JOIN temp.PHONE_RANDOM_CLOSE rc ON p.SUMMARY_DATE = rc.SUMMARY_DATE AND p.IMEI = rc.IMEI JOIN temp.PHONE_SHAKING_OPEN so ON p.SUMMARY_DATE = so.SUMMARY_DATE AND p.IMEI = so.IMEI JOIN temp.PHONE_SHAKING_CLOSE sc ON p.SUMMARY_DATE = sc.SUMMARY_DATE AND p.IMEI = sc.IMEI WHERE p.SUMMARY_DATE = '$current' ; "