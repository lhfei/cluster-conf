#!/bin/bash

#######################################################
# [手机Tab页点击]统计
#
# 操作表： SCLOUD_PHONE.PHONE_TABS_CLICK
######################################################

for i in {1..1}

do

  current=$(date +%Y%m%d -d -${i}day)

  echo "==== Date: [$current] starting .... ===="

  hive -e "INSERT INTO TABLE SCLOUD_PHONE.PHONE_TABS_CLICK select c.imei, c.widget_id, sum(c.num), count(distinct c.imei), c.dt from (select count(1) as num,imei,dt,widget_id from data_sum.sum_sdk_phone_event_day where dt=$current and app_name='Wallpaper' and widget_id in ('1','2','3','4','5') and event_id='expose' group by dt,widget_id,imei union all select count(1) as num,props['imei'] as imei,dt,widget_id from data_sum.sum_sdk_phone_event_day where dt=$current and app_name='Wallpaper' and widget_id in ('1','2','3','4','5') and event_id='expose' and imei='-' group by dt,widget_id,props['imei']) c join (select a.dt,a.imei from (select dt,imei,cast(from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd') as string) time from data_sum.sum_phone_source_day where dt=$current) a where a.time=a.dt group by a.dt,a.imei) d on c.imei=d.imei where c.dt=d.dt group by c.dt, c.imei, c.widget_id; "

  hive -e "INSERT OVERWRITE TABLE scloud_phone.PHONE_TABS_CLICK_SUMMARY SELECT sub1.imei, sub1.EXPOSURE_ON_PHONE, sub1.EXPOSURE_SUM, sub2.EXPOSURE_ON_PHONE, sub2.EXPOSURE_SUM, sub3.EXPOSURE_ON_PHONE, sub3.EXPOSURE_SUM, sub4.EXPOSURE_ON_PHONE, sub4.EXPOSURE_SUM, sub5.EXPOSURE_ON_PHONE, sub5.EXPOSURE_SUM, sub1.SUMMARY_DATE FROM (SELECT IMEI, EXPOSURE_ON_PHONE, EXPOSURE_SUM, SUMMARY_DATE FROM scloud_phone.PHONE_TABS_CLICK t1 WHERE t1.TAB_TYPE = '1' ) sub1 LEFT OUTER JOIN (SELECT IMEI, EXPOSURE_ON_PHONE, EXPOSURE_SUM, SUMMARY_DATE FROM scloud_phone.PHONE_TABS_CLICK t1 WHERE t1.TAB_TYPE = '2' ) sub2 ON sub1.imei = sub2.imei AND sub1.SUMMARY_DATE = sub2.SUMMARY_DATE LEFT OUTER JOIN (SELECT IMEI, EXPOSURE_ON_PHONE, EXPOSURE_SUM, SUMMARY_DATE FROM scloud_phone.PHONE_TABS_CLICK t1 WHERE t1.TAB_TYPE = '3' ) sub3 ON sub1.imei = sub3.imei AND sub1.SUMMARY_DATE = sub3.SUMMARY_DATE LEFT OUTER JOIN (SELECT IMEI, EXPOSURE_ON_PHONE, EXPOSURE_SUM, SUMMARY_DATE FROM scloud_phone.PHONE_TABS_CLICK t1 WHERE t1.TAB_TYPE = '4' ) sub4 ON sub1.imei = sub4.imei AND sub1.SUMMARY_DATE = sub4.SUMMARY_DATE LEFT OUTER JOIN (SELECT IMEI, EXPOSURE_ON_PHONE, EXPOSURE_SUM, SUMMARY_DATE FROM scloud_phone.PHONE_TABS_CLICK t1 WHERE t1.TAB_TYPE = '5' ) sub5 ON sub1.imei = sub5.imei AND sub1.SUMMARY_DATE = sub5.SUMMARY_DATE WHERE sub1.SUMMARY_DATE = '$current';"
  
  #hive -e "INSERT OVERWRITE TABLE PHONE_TABS_CLICK_SUMMARY_OBS SELECT sub.IMEI, sub.EXPOSURE_ON_PHONE_LATEST, sub.EXPOSURE_SUM_LATEST, sub.EXPOSURE_ON_PHONE_FOLLOW, sub.EXPOSURE_SUM_FOLLOW, sub.EXPOSURE_SUM_TOP, sub.EXPOSURE_ON_PHONE_TOP, sub.EXPOSURE_SUM_DESK, sub.EXPOSURE_ON_PHONE_DESK, sub.EXPOSURE_SUM_MANA, sub.EXPOSURE_ON_PHONE_MANA, sub.SUMMARY_DATE, s.SOFTWARE_VERSION, s.EXTERNAL_MODEL, s.GROUP_TITLE FROM phone_dashboard.PHONE_TABS_CLICK_SUMMARY sub INNER JOIN (SELECT SOFTWARE_VERSION, EXTERNAL_MODEL, GROUP_TITLE, IMEI FROM DATA_SUM.SUM_PHONE_SOURCE_DAY WHERE dt=$current) s ON i.IMEI = s.IMEI where i.SUMMARY_DATE = $current;"

  hive -e "INSERT INTO TABLE SCLOUD_PHONE.PHONE_ACTIVITY_DAILY SELECT c.imei, d.GROUP_TITLE, d.SOFTWARE_VERSION, d.EXTERNAL_MODEL, COUNT(DISTINCT c.imei), c.dt FROM (SELECT dt, imei FROM data_sum.sum_sdk_phone_app_imei_his_day WHERE dt=$current AND app_name = 'Wallpaper' AND last_active_date = dt GROUP BY dt, imei UNION ALL SELECT dt, props [ 'imei' ] AS imei FROM data_sum.sum_sdk_phone_event_day WHERE dt=$current AND app_name = 'Wallpaper' GROUP BY dt, props [ 'imei' ]) c JOIN (SELECT a.dt, a.imei, a.SOFTWARE_VERSION, a.EXTERNAL_MODEL, a.GROUP_TITLE FROM (SELECT dt, imei, SOFTWARE_VERSION, EXTERNAL_MODEL, GROUP_TITLE, CAST( FROM_UNIXTIME( CAST( SUBSTR(activation_halfhour_time, 0, 10) AS BIGINT ), 'yyyyMMdd' ) AS STRING ) TIME FROM data_sum.sum_phone_source_day WHERE dt=$current) a WHERE a.time = a.dt GROUP BY a.dt, a.imei, a.SOFTWARE_VERSION, a.EXTERNAL_MODEL, a.GROUP_TITLE) d ON c.imei = d.imei WHERE c.dt = d.dt GROUP BY c.dt, c.imei, d.SOFTWARE_VERSION, d.EXTERNAL_MODEL, d.GROUP_TITLE ; "

  hive -e "INSERT OVERWRITE TABLE SCLOUD_PHONE.PHONE_TABS_CLICK_SUMMARY_OBS SELECT c.IMEI, c.EXPOSURE_ON_PHONE_LATEST, c.EXPOSURE_SUM_LATEST, c.EXPOSURE_ON_PHONE_FOLLOW, c.EXPOSURE_SUM_FOLLOW, c.EXPOSURE_SUM_TOP, c.EXPOSURE_ON_PHONE_TOP, c.EXPOSURE_SUM_DESK, c.EXPOSURE_ON_PHONE_DESK, c.EXPOSURE_SUM_MANA, c.EXPOSURE_ON_PHONE_MANA, c.SUMMARY_DATE, d.SOFTWARE_VERSION, d.EXTERNAL_MODEL, d.GROUP_TITLE, d.ACTIVITY_DAILY FROM scloud_phone.PHONE_TABS_CLICK_SUMMARY c LEFT OUTER JOIN scloud_phone.PHONE_ACTIVITY_DAILY d ON c.IMEI = d.IMEI AND c.SUMMARY_DATE = d.SUMMARY_DATE where c.summary_date = $current;"
  echo "==== Date: [$current] done .... ===="

  ## EXPORT DATA TO TABLE [PHONE_TABS_CLICK_SUMMARY] 
  sqoop export --connect jdbc:mysql://centos10-84:3306/phone_dashboard --table PHONE_TABS_CLICK_SUMMARY_OBS  \
    --export-dir hdfs://centos10-80.letv.cn:8020/apps/hive/warehouse/scloud_phone.db/phone_tabs_click_summary_obs --validate --input-null-string '\\N'  --input-null-non-string '\\N' \
    --username scloud-dev -password {MY_PASSWORD} --input-fields-terminated-by "\t"
done



