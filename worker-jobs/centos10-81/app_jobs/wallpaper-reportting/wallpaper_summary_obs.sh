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

for i in {1..1}

do
	current=$(date +%Y%m%d -d -${i}day)

	echo "=================== current = $current starting ======================= "

	hive -e "USE scloud_phone;"

	#壁纸预览次数a、壁纸预览手机数b，人均预览次数（a/b）
	echo "##############start load into table PHONE_PREVIEW_SUMMARY "
	hive -e "INSERT INTO TABLE scloud_phone.phone_preview_summary_obs select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL' and event_id='expose' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL' and event_id='expose' and imei='-' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei;"

	#壁纸收藏次数、壁纸收藏手机数
	#echo "##############start load into table PHONE_FAVORITES_SUMMARY "
	hive -e "INSERT INTO TABLE scloud_phone.phone_favorites_summary_obs select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.1' and event_id='download' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.1' and event_id='download' and imei='-' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


	#壁纸设置次数、壁纸设置手机数
	##echo "##############start load into table PHONE_SETTING_SUMMARY "
	hive -e "INSERT INTO TABLE scloud_phone.phone_setting_summary_obs select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and imei='-' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


	#壁纸设置次数-桌面、壁纸设置手机数-桌面
	##echo "##############start load into table PHONE_SETTING_DESKTOP "
	hive -e "INSERT INTO TABLE scloud_phone.phone_setting_desktop_obs select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and props['type']='desktop' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and imei='-' and props['type']='desktop' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "



	#壁纸设置次数-锁屏、壁纸设置手机数-锁屏
	##echo "##############start load into table PHONE_SETTING_LOCK "
	hive -e "INSERT INTO TABLE scloud_phone.phone_setting_lock_obs select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and props['type']='lock' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and imei='-' and props['type']='lock' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "



	#壁纸设置次数-同时、壁纸设置手机数-同时
	##echo "##############start load into table PHONE_SETTING_ALL "
	hive -e "INSERT INTO TABLE scloud_phone.phone_setting_all_obs select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and props['type']='both' group by dt,imei union all select count(1) as num,props['imei'] as imei,dt from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='YL.2' and event_id='set' and imei='-' and props['type']='both' group by dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


	#自动换壁纸开启次数、自动换壁纸开启手机数
	##echo "##############start load into table PHONE_RANDOM_OPEN "
	hive -e "INSERT INTO TABLE scloud_phone.phone_random_open_obs select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.3' and event_id='open' group by event_id, dt,imei union all select count(1) as num,props['imei'] as imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.3' and imei='-' and event_id='open' group by event_id, dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


	#自动换壁纸关闭次数、自动换壁纸关闭手机数
	##echo "##############start load into table PHONE_RANDOM_CLOSE "
	hive -e "INSERT INTO TABLE scloud_phone.phone_random_close_obs select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.3' and event_id='close' group by event_id, dt,imei union all select count(1) as num,props['imei'] as imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.3' and imei='-' and event_id='close' group by event_id, dt,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


	#摇一摇换壁纸开启次数、摇一摇换壁纸开启手机数
	##echo "##############start load into table PHONE_SHAKING_OPEN "
	hive -e "INSERT INTO TABLE scloud_phone.phone_shaking_open_obs select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.4' and event_id='open' group by dt, event_id, imei union all select count(1) as num,props['imei'] as imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.4' and imei='-' and event_id='open' group by dt, event_id, props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "


	#摇一摇换壁纸关闭次数、摇一摇换壁纸关闭手机数
	##echo "##############start load into table PHONE_SHAKING_CLOSE "
	hive -e "INSERT INTO TABLE scloud_phone.phone_shaking_close_obs select sum(c.num),count(distinct c.imei), c.dt, c.imei from (select count(1) as num,imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.4' and event_id='close' group by dt, event_id, imei union all select count(1) as num,props['imei'] as imei,dt,event_id from data_sum.sum_sdk_phone_event_day where dt='$current' and app_name='Wallpaper' and widget_id='5.4' and imei='-' and event_id='close' group by dt, event_id, props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt='$current') a where a.time<=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei; "

	##echo "##############start load into table PHONE_WALLPAPER_SUMMARY "
	#-- for Hive abave 0.10
	#hive -e "INSERT INTO TABLE scloud_phone.phone_wallpaper_summary SELECT p.TOTAL_PREVIEW,p.TOTAL_PREIVEW_FOR_PHONE, (p.TOTAL_PREVIEW/p.TOTAL_PREIVEW_FOR_PHONE) AS AVG_PREVIEW, f.FAVORITE, f.TOTAL_FAVORITE_FOR_PHONE, s.APPLY_ALL, s.PHONE_APPLY_ALL, sd.APPLY_DESKTOP, sd.PHONE_APPLY_DESKTOP, sl.APPLY_LOCK, sl.PHONE_APPLY_LOCK, sa.APPLY_ALL, sa.PHONE_APPLY_ALL, ro.RANDOM_ENABLE, ro.RANDOM_FOR_PHONE, rc.RANDOM_DISABLE, rc.RANDOM_DISABLE_PHONE, so.SHAKING_ENABLE, so.SHAKING_ENABLE_PHONE, sc.SHAKING_DISABLE,sc.SHAKING_DISABLE_PHONE, p.SUMMARY_DATE FROM temp.PHONE_PREVIEW_SUMMARY p, temp.PHONE_FAVORITES_SUMMARY f, temp.PHONE_SETTING_ALL s, temp.PHONE_SETTING_DESKTOP sd, temp.PHONE_SETTING_LOCK sl, temp.PHONE_SETTING_ALL sa, temp.PHONE_RANDOM_OPEN ro , temp.PHONE_RANDOM_CLOSE rc , temp.PHONE_SHAKING_OPEN so, temp.PHONE_SHAKING_CLOSE sc WHERE p.SUMMARY_DATE = f.SUMMARY_DATE AND p.SUMMARY_DATE=s.SUMMARY_DATE AND p.SUMMARY_DATE=sd.SUMMARY_DATE AND p.SUMMARY_DATE=sl.SUMMARY_DATE AND p.SUMMARY_DATE=sa.SUMMARY_DATE AND p.SUMMARY_DATE=ro.SUMMARY_DATE AND p.SUMMARY_DATE=rc.SUMMARY_DATE AND p.SUMMARY_DATE=so.SUMMARY_DATE AND p.SUMMARY_DATE=sc.SUMMARY_DATE AND p.SUMMARY_DATE = '$current'; "
	hive -e "INSERT INTO TABLE scloud_phone.phone_wallpaper_summary_imei SELECT p.TOTAL_PREVIEW, p.TOTAL_PREIVEW_FOR_PHONE, ( p.TOTAL_PREVIEW / p.TOTAL_PREIVEW_FOR_PHONE ) AS AVG_PREVIEW, f.FAVORITE, f.TOTAL_FAVORITE_FOR_PHONE, s.APPLY_ALL, s.PHONE_APPLY_ALL, sd.APPLY_DESKTOP, sd.PHONE_APPLY_DESKTOP, sl.APPLY_LOCK, sl.PHONE_APPLY_LOCK, sa.APPLY_ALL, sa.PHONE_APPLY_ALL, ro.RANDOM_ENABLE, ro.RANDOM_FOR_PHONE, rc.RANDOM_DISABLE, rc.RANDOM_DISABLE_PHONE, so.SHAKING_ENABLE, so.SHAKING_ENABLE_PHONE, sc.SHAKING_DISABLE, sc.SHAKING_DISABLE_PHONE, p.SUMMARY_DATE, p.IMEI FROM scloud_phone.PHONE_PREVIEW_SUMMARY_OBS p LEFT OUTER JOIN scloud_phone.PHONE_FAVORITES_SUMMARY_OBS f ON p.SUMMARY_DATE = f.SUMMARY_DATE AND p.IMEI = f.IMEI LEFT OUTER JOIN scloud_phone.PHONE_SETTING_ALL_OBS s ON p.SUMMARY_DATE = s.SUMMARY_DATE AND p.IMEI = s.IMEI LEFT OUTER JOIN scloud_phone.PHONE_SETTING_DESKTOP_OBS sd ON p.SUMMARY_DATE = sd.SUMMARY_DATE AND p.IMEI = sd.IMEI LEFT OUTER JOIN scloud_phone.PHONE_SETTING_LOCK_OBS sl ON p.SUMMARY_DATE = sl.SUMMARY_DATE AND p.IMEI = sl.IMEI LEFT OUTER JOIN scloud_phone.PHONE_SETTING_ALL_OBS sa ON p.SUMMARY_DATE = sa.SUMMARY_DATE AND p.IMEI = sa.IMEI LEFT OUTER JOIN scloud_phone.PHONE_RANDOM_OPEN_OBS ro ON p.SUMMARY_DATE = ro.SUMMARY_DATE AND p.IMEI = ro.IMEI LEFT OUTER JOIN scloud_phone.PHONE_RANDOM_CLOSE_OBS rc ON p.SUMMARY_DATE = rc.SUMMARY_DATE AND p.IMEI = rc.IMEI LEFT OUTER JOIN scloud_phone.PHONE_SHAKING_OPEN_OBS so ON p.SUMMARY_DATE = so.SUMMARY_DATE AND p.IMEI = so.IMEI LEFT OUTER JOIN scloud_phone.PHONE_SHAKING_CLOSE_OBS sc ON p.SUMMARY_DATE = sc.SUMMARY_DATE AND p.IMEI = sc.IMEI WHERE p.SUMMARY_DATE = '$current' ; "

	##echo "##############start load into table PHONE_WALLPAPER_SUMMARY_OBS "
	hive -e "INSERT INTO TABLE scloud_phone.phone_wallpaper_summary_obs SELECT i.TOTAL_PREVIEW, i.TOTAL_PREIVEW_FOR_PHONE, i.AVG_PREVIEW, i.FAVORITE, i.TOTAL_FAVORITE_FOR_PHONE, i.TOTAL_SETTING, i.SETTING_FOR_PHONE, i.APPLY_DESKTOP, i.PHONE_APPLY_DESKTOP, i.APPLY_LOCK, i.PHONE_APPLY_LOCK, i.APPLY_ALL, i.PHONE_APPLY_ALL, i.RANDOM_ENABLE, i.RANDOM_FOR_PHONE, i.RANDOM_DISABLE, i.RANDOM_DISABLE_PHONE, i.SHAKING_ENABLE, i.SHAKING_ENABLE_PHONE, i.SHAKING_DISABLE, i.SHAKING_DISABLE_PHONE, i.SUMMARY_DATE, i.IMEI, s.SOFTWARE_VERSION, s.EXTERNAL_MODEL, s.GROUP_TITLE FROM scloud_phone.PHONE_WALLPAPER_SUMMARY_IMEI i INNER JOIN (SELECT SOFTWARE_VERSION, EXTERNAL_MODEL, GROUP_TITLE, IMEI FROM DATA_SUM.SUM_PHONE_SOURCE_DAY WHERE dt='$current') s ON i.IMEI = s.IMEI where i.SUMMARY_DATE = '$current' ;" 

	
	hive -e "INSERT OVERWRITE INTO TABLE scloud_phone.phone_wallpaper_summary_obs_BK SELECT * FROM phone_wallpaper_summary_obs WHERE SUMMARY_DATE='$current'"
	echo "=================== current = $current done ======================= "

	echo "export data to MySQL table PHONE_WALLPAPER_SUMMARY_OBS .... "
	sqoop export --connect jdbc:mysql://centos10-84:3306/phone_dashboard --table PHONE_WALLPAPER_SUMMARY_OBS  \
    --export-dir hdfs://centos10-80.letv.cn:8020/apps/hive/warehouse/scloud_phone.db/phone_wallpaper_summary_obs_bk --validate --input-null-string '\\N'  --input-null-non-string '\\N' \
    --username scloud-dev -password {MY_PASSWORD} --input-fields-terminated-by "\t"
done
