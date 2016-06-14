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

  echo "============ Date[$current] starting ... ... ... ============"

  hive -e "INSERT INTO TABLE scloud_log.PHONE_WALLPAPER_PREIVEW SELECT c.imei, c.wallpaper_id, COUNT(DISTINCT c.imei), SUM(c.num), c.dt FROM (SELECT COUNT(1) AS num, imei, props [ 'content' ] AS wallpaper_id, dt FROM dwd.dwd_flow_sdk_phone_event_day WHERE dt = '$current' AND app_name = 'Wallpaper' AND widget_id = 'YL' AND event_id = 'expose' GROUP BY dt, imei, props [ 'content' ] UNION ALL SELECT COUNT(*) AS num, props [ 'imei' ] AS imei, props [ 'content' ] AS wallpaper_id, dt FROM dwd.dwd_flow_sdk_phone_event_day WHERE dt = '$current' AND app_name = 'Wallpaper' AND widget_id = 'YL' AND event_id = 'expose' AND imei = '-' GROUP BY dt, props [ 'imei' ], props [ 'content' ]) c JOIN (SELECT a.dt, a.imei FROM (SELECT dt, imei, CAST( FROM_UNIXTIME( CAST( SUBSTR(activation_halfhour_time, 0, 10) AS BIGINT ), 'yyyyMMdd' ) AS STRING ) TIME FROM dwd.dwd_res_zhixin_phone_source_day WHERE dt = '$current') a WHERE a.time = a.dt GROUP BY a.dt, a.imei) d ON c.imei = d.imei WHERE c.dt = d.dt GROUP BY c.dt, c.imei, c.wallpaper_id ; "

  #hive -e "INSERT INTO TABLE scloud_phone.phone_wallpaper_summary_obs SELECT i.TOTAL_PREVIEW, i.TOTAL_PREIVEW_FOR_PHONE, i.AVG_PREVIEW, i.FAVORITE, i.TOTAL_FAVORITE_FOR_PHONE, i.TOTAL_SETTING, i.SETTING_FOR_PHONE, i.APPLY_DESKTOP, i.PHONE_APPLY_DESKTOP, i.APPLY_LOCK, i.PHONE_APPLY_LOCK, i.APPLY_ALL, i.PHONE_APPLY_ALL, i.RANDOM_ENABLE, i.RANDOM_FOR_PHONE, i.RANDOM_DISABLE, i.RANDOM_DISABLE_PHONE, i.SHAKING_ENABLE, i.SHAKING_ENABLE_PHONE, i.SHAKING_DISABLE, i.SHAKING_DISABLE_PHONE, i.SUMMARY_DATE, i.IMEI, s.SOFTWARE_VERSION, s.EXTERNAL_MODEL, s.GROUP_TITLE FROM scloud_log.PHONE_WALLPAPER_SUMMARY_IMEI i INNER JOIN (SELECT SOFTWARE_VERSION, EXTERNAL_MODEL, GROUP_TITLE, IMEI FROM DATA_SUM.SUM_PHONE_SOURCE_DAY WHERE dt='$current') s ON i.IMEI = s.IMEI where i.SUMMARY_DATE = '$current' ;" 

  hive -e "INSERT INTO TABLE scloud_log.PHONE_WALLPAPER_PREIVEW_OBS SELECT i.IMEI, i.WALLPAPER_ID, i.TOTAL_PREIVEW_FOR_PHONE, i.TOTAL_PREVIEW, i.SUMMARY_DATE , s.GROUP_TITLE, s.EXTERNAL_MODEL, s.SOFTWARE_VERSION FROM scloud_log.phone_wallpaper_preivew i INNER JOIN (SELECT SOFTWARE_VERSION, EXTERNAL_MODEL, GROUP_TITLE, IMEI FROM dwd.dwd_res_zhixin_phone_source_day WHERE dt='$current') s ON i.IMEI = s.IMEI where i.SUMMARY_DATE = '$current' ;" 

  hive -e "INSERT into table scloud_log.PHONE_WALLPAPER_TAG SELECT w.IMEI, w.WALLPAPER_ID, w.TOTAL_PREIVEW_FOR_PHONE, w.TOTAL_PREVIEW, w.SUMMARY_DATE, w.GROUP_TITLE, w.EXTERNAL_MODEL, w.SOFTWARE_VERSION, t.WALLPAPER_NAME, t.TAG_ID, t.TAG_NAME, t.TAG_CAT_ID, t.TAG_CAT_NAME FROM scloud_log.PHONE_WALLPAPER_PREIVEW_OBS w LEFT OUTER JOIN dwd.dwd_res_zhixin_phone_twallpaper_day t ON w.WALLPAPER_ID = t.WALLPAPER_ID where w.SUMMARY_DATE = '$current' ;"

  echo "============ Date[$current] done ... ... ... ============"
done