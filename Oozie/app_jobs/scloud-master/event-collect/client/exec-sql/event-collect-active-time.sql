--add jar /user/cloudland/apps/event-collect/client/brickhouse-0.7.1-SNAPSHOT.jar;
add jar /letv/cloudland/app_tmp/oozie/apps/event-collect/brickhouse-0.7.1-SNAPSHOT.jar;
CREATE TEMPORARY FUNCTION collect AS 'brickhouse.udf.collect.CollectUDAF';
CREATE TEMPORARY FUNCTION map_append_key AS 'brickhouse.udf.collect.MapKeyAppendUDF';
set hbase.mapred.outputtable="device_day_metric_new";
--explain
insert into table scloud_phone.device_day_metric
(
  key, 
  music_active_time, 
  wallpaper_active_time,
  music_active_count, 
  wallpaper_active_count,
  device_other_apps_active_time,
  device_other_apps_active_count,
  eui_apps_special_detail,
  eui_apps_all_event,
  device_other_apps_crash_count,
  device_other_apps_install,
  device_other_apps_upgrade,
  device_other_apps_uninstall,
  device_other_apps_basic
)
select key,
       nvl(active_time_map['com.android.music'], 0) as music_active_time,
       nvl(active_time_map['com.letv.android.wallpaperonline'], 0) as wallpaper_active_count,
       nvl(count_map['com.android.music'], 0) as music_active_count,
       nvl(count_map['com.letv.android.wallpaperonline'], 0) as wallpaper_active_count,
       map_append_key(active_time_map, 'device_active_time_', true) as dev_active_time,
       map_append_key(count_map, 'device_active_count_', true) as dev_active_count,
       map('', cast('-1' as bigint)) as a,
       map('', cast('-1' as bigint)) as b,
       map('', cast('-1' as bigint)) as c,
       map('', cast('-1' as bigint)) as d,
       map('', cast('-1' as bigint)) as e,
       map('', cast('-1' as bigint)) as f,
       map('', cast('-1' as bigint)) as g
  from (select named_struct('month', substr('20151124', 1, 6), 'day_imei', concat_ws('', '20151124', imei)) as key,
               collect(package_name, nvl(sum_value,0)) active_time_map,
               collect(package_name, nvl(count_value,0)) count_map
         from (select imei,
                      package_name,
                      ceil(sum(open_dur) / 1000) as sum_value,
                      nvl(count(imei), 0) as count_value
                from dwd.dwd_flow_sdk_phone_app_usage_day 
               where dt = '20151124'
                 and imei is not null
                 and package_name is not null
                 and open_dur is not null
                 and open_dur > '0'
                 --and imei = '866479021496608'
                 --and imei = '866479021496608'
                 and length(imei) = 15
                 and closed_time != open_time
               group by imei,package_name
        ) sum_table group by imei
 ) map_table;
