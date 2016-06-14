add jar /user/cloudland/apps/event-collect/client/brickhouse-0.7.1-SNAPSHOT.jar;
CREATE TEMPORARY FUNCTION collect AS 'brickhouse.udf.collect.CollectUDAF';
CREATE TEMPORARY FUNCTION map_filter_keys_pattern AS 'brickhouse.udf.collect.MapFilterKeyPatternUDF';
set hbase.mapred.outputtable="device_day_metric_new";
--explain
insert into table scloud_phone.device_day_metric 
(
  key, music_download, wallpaper_download,wallpaper_set, eui_apps_special_detail, eui_apps_all_event, 
  device_other_apps_crash_count, device_other_apps_install,device_other_apps_upgrade,device_other_apps_uninstall,
  device_other_apps_active_time, device_other_apps_active_count,device_other_apps_basic
)
select named_struct('month', substr('20151124', 1, 6), 'day_imei', concat_ws('', '20151124', imei)) as key,
       event_map['euiapp_Music_download'],
       event_map['euiapp_Wallpaper_download'],
       event_map['euiapp_Wallpaper_set'],
       map('',  cast('-1' as  bigint)),
       map_filter_keys_pattern(event_map, 'euiapp', true) euiapp_event,
       map_filter_keys_pattern(event_map, '_install', false)  as all_app_install,
       map_filter_keys_pattern(event_map, '_upgrade', false)  as all_app_upgrade,
       map_filter_keys_pattern(event_map, '_uninstall', false)  as all_app_uninstall,
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint))
 from (select imei,
              collect(full_name, count_value) as event_map
        from (select case when length(imei) = 1 then
                       props["imei"]
                     else
                       imei
                     end as imei,
                     concat_ws('_',  nvl(props["packageName"], 'euiapp'), app_name, event_id) as full_name,
                     count(imei) as count_value
                from dwd.dwd_flow_sdk_phone_event_day
               where dt = '20151124'
                 and imei is not null
                 --and length(imei) = 15
                 --and imei = '868256026946797'
                 --and imei = '866479021496608'
                 and app_name is not null
                 and event_id is not null
                group by imei,event_id,app_name,props["packageName"],props["imei"]
      ) group_table where full_name not in ('euiapp_PMS_APP_install', 'euiapp_PMS_APP_uninstall', 'euiapp_PMS_APP_upgrade') group by imei 
) category_table
