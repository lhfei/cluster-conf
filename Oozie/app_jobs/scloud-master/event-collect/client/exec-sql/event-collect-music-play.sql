add jar /user/cloudland/apps/event-collect/client/brickhouse-0.7.1-SNAPSHOT.jar;
CREATE TEMPORARY FUNCTION collect AS 'brickhouse.udf.collect.CollectUDAF';
CREATE TEMPORARY FUNCTION map_append_key AS 'brickhouse.udf.collect.MapKeyAppendUDF';
set hbase.mapred.outputtable="device_day_metric_new";
--explain
insert into table scloud_phone.device_day_metric 
(
  key,
  env_version ,
  env_mode    ,
  env_ip      ,
  env_phone1  ,
  env_phone2  ,
  env_group_id,
  env_group_title,
  music_download,
  music_play,
  music_play_duration,
  music_active_time  ,
  music_active_count ,
  wallpaper_download ,
  wallpaper_set      ,
  wallpaper_active_time ,
  wallpaper_active_count ,
  eui_apps_special_detail,
  eui_apps_all_event,
  device_other_apps_crash_count,
  device_other_apps_install,
  device_other_apps_upgrade,
  device_other_apps_uninstall,
  device_other_apps_active_time,
  device_other_apps_active_count,
  device_other_apps_basic
)
select named_struct('month', substr('20151124', 1, 6), 'day_imei', concat_ws('', '20151124', imei)) as key,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       nvl(sum(c_value) , 0) as play_times,
       nvl(sum(sum_play_pt), 0) as all_play_duration,
       null,
       null,
       null,
       null,
       null,
       null,
       map_append_key(collect(concat_ws('_', 'Music', 'musicplay', song_id_base64), s_count), 'special_detail_', true),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint))
  from (select case when length(imei) = 1 then
                 props["imei"]
               else
                 imei
               end as imei ,
               base64(encode(song_id,'UTF-8')) song_id_base64,
               count(song_id) as s_count,
               count(event_id) as c_value,
               sum(pt) as sum_play_pt
          from dwd.dwd_flow_sdk_phone_music_play_day 
         where dt = '20151124'
           and imei is not null
           --and imei = '866479021496608'
           --and imei = '866479020036223'
           and event_id is not null
           and event_id = 'musicplay'
           and app_name is not null
           -- and length(imei) = 15
           and app_name = 'Music' 
           and song_id is not null
        group by imei,song_id,props["imei"]
) as c_table group by imei
