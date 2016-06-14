add jar hdfs://centos10-80.letv.cn:8020/user/cloudland/apps/event-collect/client/brickhouse-0.7.1-SNAPSHOT.jar;
add jar hdfs://centos10-80.letv.cn:8020/user/cloudland/apps/event-collect/client/json-serde-1.3.1-SNAPSHOT-jar-with-dependencies.jar;

CREATE TEMPORARY FUNCTION collect AS 'brickhouse.udf.collect.CollectUDAF';
CREATE TEMPORARY FUNCTION map_append_key AS 'brickhouse.udf.collect.MapKeyAppendUDF';
CREATE TEMPORARY FUNCTION map_filter_keys_pattern AS 'brickhouse.udf.collect.MapFilterKeyPatternUDF';

set hbase.mapred.outputtable="device_day_metric_new_test";

--explain
insert into table scloud_phone.device_day_metric_test
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
  from (select named_struct('month', substr('${PARTITION}', 1, 6), 'day_imei', concat_ws('', '${PARTITION}', imei)) as key,
               collect(package_name, nvl(sum_value,0)) active_time_map,
               collect(package_name, nvl(count_value,0)) count_map
         from (select imei,
                      package_name,
                      ceil(sum(open_dur) / 1000) as sum_value,
                      nvl(count(imei), 0) as count_value
                from dwd.dwd_flow_sdk_phone_app_usage_day 
               where dt = '${PARTITION}'
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



--explain
insert into table scloud_phone.device_day_metric_test 
(
  key, music_download, wallpaper_download,wallpaper_set, eui_apps_special_detail, eui_apps_all_event, 
  device_other_apps_crash_count, device_other_apps_install,device_other_apps_upgrade,device_other_apps_uninstall,
  device_other_apps_active_time, device_other_apps_active_count,device_other_apps_basic
)
select named_struct('month', substr('${PARTITION}', 1, 6), 'day_imei', concat_ws('', '${PARTITION}', imei)) as key,
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
               where dt = '${PARTITION}'
                 and imei is not null
                 --and length(imei) = 15
                 --and imei = '868256026946797'
                 --and imei = '866479021496608'
                 and app_name is not null
                 and event_id is not null
                group by imei,event_id,app_name,props["packageName"],props["imei"]
      ) group_table where full_name not in ('euiapp_PMS_APP_install', 'euiapp_PMS_APP_uninstall', 'euiapp_PMS_APP_upgrade') group by imei 
) category_table ;




--insert into table scloud_phone.device_day_metric_test (key, env_phone cast('-1' as  as BIGINT),env_phone2,env_ip)
--explain
insert into table scloud_phone.device_day_metric_test
--( key 
--  env_phone cast('-1' as  as BIGINT),
--  env_phone2,
--  env_ip
--)
select named_struct('month', substr(dt, 1, 6), 'day_imei', concat_ws('', dt, imei)) as key,
       null,
       null,
       ip,
       ip_country_code,
       ip_country_name,
       ip_region_code,
       ip_region_name,
       ip_province_code,
       ip_province_name,
       ip_city_code,
       ip_city_name,
       ip_isp,
       case when gps is null or length(gps) = 1 then
         ''
       else
         gps
       end gps,
       phone_no,
       phone_no_2,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint))
  from dwd.dwd_flow_sdk_phone_env_day
 where dt = '${PARTITION}'
   and imei is not null 
   and length(imei) = 15
   --and imei = '866479021496608'
   --and dwd_flow_sdk_phone_env_day.imei = ' cast('-1' as  as BIGINT)33524239284400'
   and (phone_no is not null or phone_no_2 is not null)
   and (length(phone_no) >=  11 or length(phone_no_2) >=  11);




--explain
insert into table scloud_phone.device_day_metric_test 
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
select named_struct('month', substr('${PARTITION}', 1, 6), 'day_imei', concat_ws('', '${PARTITION}', imei)) as key,
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
         where dt = '${PARTITION}'
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
) as c_table group by imei ;


set hbase.mapred.outputtable="device_day_metric_test_new";
--explain
insert into table scloud_phone.device_day_metric_test
(
  key,
  env_version,
  env_mode,
  env_group_id,
  env_group_title,
  eui_apps_special_detail ,
  eui_apps_all_event ,
  device_other_apps_crash_count,
  device_other_apps_install ,
  device_other_apps_upgrade ,
  device_other_apps_uninstall ,
  device_other_apps_active_time,
  device_other_apps_active_count,
  device_other_apps_basic
)
select named_struct('month', substr('${PARTITION}', 1, 6), 'day_imei', concat_ws('', '${PARTITION}', imei)) as key,
       software_version,
       model,
       group_id,
       base64_group_title,
       a,
       b,
       c,
       d,
       e,
       f,
       g,
       h,
       i
 from (select imei ,
              max(software_version) as software_version,
              max(model) as model,
              max(group_id) as group_id,
              base64(encode(max(group_title),'UTF-8')) as base64_group_title,
              map('', cast('-1' as bigint)) as a,
              map('', cast('-1' as bigint)) as b,
              map('', cast('-1' as bigint)) as c,
              map('', cast('-1' as bigint)) as d,
              map('', cast('-1' as bigint)) as e,
              map('', cast('-1' as bigint)) as f,
              map('', cast('-1' as bigint)) as g,
              map('', cast('-1' as bigint)) as h,
              map('', cast('-1' as bigint)) as i 
         from dwd.dwd_res_zhixin_phone_source_day
        where dt = '${PARTITION}' 
          and imei is not null and length(imei) = 15
         --and imei = '866479021496608'
          and group_id is not null
          and software_version is not null 
          and length(software_version) = 18
          and model is not null
       group by imei
) distinct_table;


-- ####################################
--  crash job.
-- ####################################
set hbase.mapred.outputtable="device_day_metric_new_test";
--explain
insert into scloud_phone.device_day_metric_test (
  key,
  eui_apps_special_detail ,
  eui_apps_all_event ,
  device_other_apps_crash_count ,
  device_other_apps_install ,
  device_other_apps_upgrade ,
  device_other_apps_uninstall ,
  device_other_apps_active_time ,
  device_other_apps_active_count ,
  device_other_apps_basic
) 
select named_struct('month', substr('${PARTITION}', 1, 6), 'day_imei', concat_ws('', '${PARTITION}', imei)) as key, 
       map('', cast('-1' as bigint)) as a,
       map('', cast('-1' as bigint)) as b,
       map_append_key(crash_count_map, 'device_crash_', true) as crash_count_map,
       map('', cast('-1' as bigint)) as c,
       map('', cast('-1' as bigint)) as d,
       map('', cast('-1' as bigint)) as e,
       map('', cast('-1' as bigint)) as f,
       map('', cast('-1' as bigint)) as g,
       map('', cast('-1' as bigint)) as h
  from (select imei,
               collect(error_process, c_value) as crash_count_map 
         from (select imei,
                      case when instr(error_process, ':') > 0 then
                         substr(error_process, 1, instr(error_process, ':') - 1) 
                      else
                         error_process
                      end  as error_process ,
                      count(error_process) as c_value
                 from crash.t_crash_info 
                where regexp_replace(day, '-', '') = '${PARTITION}'
                  --day = '${PARTITION}'
                  --day= concat_ws('-', substr('${PARTITION}', 1, 4), substr('${PARTITION}', 4, 2), substr('${PARTITION}', 6, 2))
                  and error_process is not null
                  and length(error_process) > 1
                  and imei is not null
                  and length(imei)=15 
              group by imei,error_process
     ) c_table group by imei
) g_table;
