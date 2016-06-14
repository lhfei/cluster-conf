set role admin;
add jar hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/apps/dev/event-collect/client/brickhouse-0.7.1-SNAPSHOT.jar;
add jar hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/apps/dev/event-collect/client/json-serde-1.3.7-jar-with-dependencies.jar;
CREATE TEMPORARY FUNCTION collect AS 'brickhouse.udf.collect.CollectUDAF';
CREATE TEMPORARY FUNCTION map_append_key AS 'brickhouse.udf.collect.MapKeyAppendUDF';
CREATE TEMPORARY FUNCTION map_filter_keys_pattern AS 'brickhouse.udf.collect.MapFilterKeyPatternUDF';
set hbase.mapred.outputtable="phone_day_metric";
--explain
insert into table scloud_phone.phone_day_metric
(
  key,
  music_active_time, 
  wallpaper_active_time,
  music_active_count, 
  wallpaper_active_count,
  device_other_apps_active_time,
  device_other_apps_active_count,
  music_play_content,
  eui_apps_all_event,
  device_other_apps_crash_count,
  device_other_apps_install,
  device_other_apps_upgrade,
  device_other_apps_uninstall,
  device_other_apps_basic,
  env_gps_detail,
  video_play_cv,
  video_play_vv,
  video_play_pt,
  browser_content,
  wallpaper_set_content,
  calendar_content
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
       map('', cast('-1' as bigint)) as g,
       map('', '') as h,
       map('', cast('-1' as bigint)) as j, 
       map('', cast('-1' as bigint)) as k,
       map('', cast('-1' as bigint)) as l,
       map('', cast('-1' as bigint)) as m,
       map('', cast('-1' as bigint)) as n,
       map('', cast('-1' as bigint)) as o 
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
insert into table scloud_phone.phone_day_metric 
(
  key, 
  music_download,
  wallpaper_download,
  wallpaper_set, 
  music_play_content,
  eui_apps_all_event, 
  device_other_apps_crash_count, 
  device_other_apps_install,
  device_other_apps_upgrade,
  device_other_apps_uninstall,
  device_other_apps_active_time, 
  device_other_apps_active_count,
  device_other_apps_basic,
  env_gps_detail,
  video_play_cv,
  video_play_vv,
  video_play_pt,
  browser_content,
  wallpaper_set_content,
  calendar_content
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
       map('',  cast('-1' as  bigint)),
       map('',  ''),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       browser_content,
       wallpaper_set_content, 
       calendar_content
 from (select imei,
              collect(full_name, count_value) as event_map,
              collect(browser_keyword, count_value) as browser_content,
              collect(wallpaper_set_content, wallpaper_count_value) as wallpaper_set_content,
              collect(calendar_content, calendar_content_count) as calendar_content 
        from (select case when length(imei) = 1 and length(props['imei']) > 1
                        then props['imei']
                     else
                        imei
                     end as imei,
                     concat_ws('_',  nvl(props['packageName'], 'euiapp'), app_name, event_id) as full_name,
                     -- browser search and click url
                     case when app_name = 'Browser' and event_id = 'click' and  props['url'] is not null
                         then concat_ws('_', app_name, event_id, base64(encode(props['url'], 'UTF-8')))
                     when app_name = 'Browser' 
                          and (event_id = 'searchRes' or event_id = 'searchResult') 
                          and props['content'] is not null
                       then concat_ws('_', app_name, event_id, base64(encode(props['content'], 'UTF-8')))
                     else
                       null
                     end browser_keyword,
                     -- wallpaper set content 
                     case when app_name = 'Wallpaper' and event_id = 'set' and  props['type'] is not null and props['content'] is not null
                       then concat_ws('_', app_name, event_id, cast(unix_timestamp(current_time, 'yyyyMMdd HH:mm:ss') as string), props['type'], base64(encode(props['content'], 'UTF-8')))
                     else
                       null
                     end wallpaper_set_content,
                     count(imei) over (partition by imei,event_id,app_name,props['imei'],props['packageName']) count_value,
                     case when app_name = 'Wallpaper' and event_id = 'set' and  props['type'] is not null and props['content'] is not null
                     then
                       count(imei) over (partition by imei,event_id,app_name,props['imei'],props['packageName'],props['type'],props['content']) 
                     else 
                       null
                     end wallpaper_count_value,
                     -- calendar content (search,sub,unsub,searchRs)
                     case when app_name = 'Calendar'
                           and (event_id = 'search' or event_id = 'searchRes' or event_id = 'unsubscrible' or event_id = 'subscrible') 
                           and props['content'] is not null
                        then concat_ws('_', app_name, event_id, base64(encode(props['content'], 'UTF-8')))
                     else
                        null
                     end calendar_content,
                     -- calendar event count
                     case when app_name = 'Calendar'
                         and (event_id = 'search' or event_id = 'searchRes' or event_id = 'unsubscrible' or event_id = 'subscrible')
                         and props['content'] is not null
                      then
                        count(imei) over (partition by imei,event_id,app_name,props['imei'],props['packageName'],props['content'])
                      else
                        null
                      end calendar_content_count
                from dwd.dwd_flow_sdk_phone_event_day
               where dt = '${PARTITION}'
                 and imei is not null
                 --and length(imei) = 15
                 --and imei = '868256026946797'
                 --and imei = '866479021496608'
                 and app_name is not null
                 and event_id is not null
          ) group_table where count_value is not null and count_value > 0 and imei is not null and length(imei) = 15
            and full_name not in ('euiapp_PMS_APP_install', 'euiapp_PMS_APP_uninstall', 'euiapp_PMS_APP_upgrade') 
          group by imei
 ) category_table;
--explain
insert into table scloud_phone.phone_day_metric 
(
  key, 
  music_download, 
  wallpaper_download,
  wallpaper_set, 
  music_play_content,
  eui_apps_all_event, 
  device_other_apps_crash_count, 
  device_other_apps_install,
  device_other_apps_upgrade,
  device_other_apps_uninstall,
  device_other_apps_active_time, 
  device_other_apps_active_count,
  device_other_apps_basic,
  env_gps_detail,
  video_play_cv,
  video_play_vv,
  video_play_pt,
  browser_content,
  wallpaper_set_content,
  calendar_content
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
       map('',  cast('-1' as  bigint)),
       map('',  ''),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       browser_content,
       wallpaper_set_content, 
       calendar_content
 from (select imei,
              collect(full_name, count_value) as event_map,
              collect(browser_keyword, count_value) as browser_content,
              collect(wallpaper_set_content, wallpaper_count_value) as wallpaper_set_content,
              collect(calendar_content, calendar_content_count) as calendar_content 
        from (select case when length(imei) = 1 and length(props['imei']) > 1
                        then props['imei']
                     else
                        imei
                     end as imei,
                     concat_ws('_',  nvl(props['packageName'], 'euiapp'), app_name, event_id) as full_name,
                     -- browser search and click url
                     case when app_name = 'Browser' and event_id = 'click' and  props['url'] is not null
                         then concat_ws('_', app_name, event_id, base64(encode(props['url'], 'UTF-8')))
                     when app_name = 'Browser' 
                          and (event_id = 'searchRes' or event_id = 'searchResult') 
                          and props['content'] is not null
                       then concat_ws('_', app_name, event_id, base64(encode(props['content'], 'UTF-8')))
                     else
                       null
                     end browser_keyword,
                     -- wallpaper set content 
                     case when app_name = 'Wallpaper' and event_id = 'set' and  props['type'] is not null and props['content'] is not null
                       then concat_ws('_', app_name, event_id, cast(unix_timestamp(current_time, 'yyyyMMdd HH:mm:ss') as string), props['type'], base64(encode(props['content'], 'UTF-8')))
                     else
                       null
                     end wallpaper_set_content,
                     count(imei) over (partition by imei,event_id,app_name,props['imei'],props['packageName']) count_value,
                     case when app_name = 'Wallpaper' and event_id = 'set' and  props['type'] is not null and props['content'] is not null
                     then
                       count(imei) over (partition by imei,event_id,app_name,props['imei'],props['packageName'],props['type'],props['content']) 
                     else 
                       null
                     end wallpaper_count_value,
                     -- calendar content (search,sub,unsub,searchRs)
                     case when app_name = 'Calendar'
                           and (event_id = 'search' or event_id = 'searchRes' or event_id = 'unsubscrible' or event_id = 'subscrible') 
                           and props['content'] is not null
                        then concat_ws('_', app_name, event_id, base64(encode(props['content'], 'UTF-8')))
                     else
                        null
                     end calendar_content,
                     -- calendar event count
                     case when app_name = 'Calendar'
                         and (event_id = 'search' or event_id = 'searchRes' or event_id = 'unsubscrible' or event_id = 'subscrible')
                         and props['content'] is not null
                      then
                        count(imei) over (partition by imei,event_id,app_name,props['imei'],props['packageName'],props['content'])
                      else
                        null
                      end calendar_content_count
                from dwd.dwd_flow_sdk_phone_event_day
               where dt = '${PARTITION}'
                 and imei is not null
                 --and length(imei) = 15
                 --and imei = '868256026946797'
                 --and imei = '866479021496608'
                 and app_name is not null
                 and event_id is not null
          ) group_table 
          where full_name not in ('euiapp_PMS_APP_install', 'euiapp_PMS_APP_uninstall', 'euiapp_PMS_APP_upgrade') 
          and imei is not null and length(imei) = 15 
          group by imei 
 ) category_table;
--explain
insert into scloud_phone.phone_day_metric (
  key,
  music_play_content,
  eui_apps_all_event ,
  device_other_apps_crash_count ,
  device_other_apps_install ,
  device_other_apps_upgrade ,
  device_other_apps_uninstall ,
  device_other_apps_active_time ,
  device_other_apps_active_count ,
  device_other_apps_basic,
  env_gps_detail,
  video_play_cv ,
  video_play_vv,
  video_play_pt,
  browser_content,
  wallpaper_set_content,
  calendar_content
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
       map('', cast('-1' as bigint)) as h,
       map('', '') as i ,
       map('', cast('-1' as bigint)) as j,
       map('', cast('-1' as bigint)) as k,
       map('', cast('-1' as bigint)) as l,
       map('', cast('-1' as bigint)) as m,
       map('', cast('-1' as bigint)) as n,
       map('', cast('-1' as bigint)) as o
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
--insert into table scloud_phone.phone_day_metric (key, env_phone cast('-1' as  as BIGINT),env_phone2,env_ip)
--explain
insert into table scloud_phone.phone_day_metric
--( key 
--  env_phone cast('-1' as  as BIGINT),
--  env_phone2,
--  env_ip
--)
select named_struct('month', substr(dt, 1, 6), 'day_imei', concat_ws('', dt, imei)) as key,
       build_version,
       product_model,
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
         null 
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
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       case when letv_uid is null or length(letv_uid) = 1 then
        null
       else  
         letv_uid
       end letv_uid,
       map('',  ''),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       null,
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint))
  from dwd.dwd_flow_sdk_phone_env_day
 where dt = '${PARTITION}'
   and imei is not null 
   and length(imei) = 15
   and build_version is not null
   and product_model is not null
   and length(build_version) > 1
   and length(product_model) > 1
   --and imei = '866479021496608'
   --and dwd_flow_sdk_phone_env_day.imei = ' cast('-1' as  as BIGINT)33524239284400'
   and (phone_no is not null or phone_no_2 is not null)
   and (length(phone_no) >=  11 or length(phone_no_2) >=  11);
--explain
insert into scloud_phone.phone_day_metric
(
  key,
  music_play_content,
  --eui_apps_special_detail,
  eui_apps_all_event,
  device_other_apps_crash_count,
  device_other_apps_install,
  device_other_apps_upgrade,
  device_other_apps_uninstall,
  device_other_apps_active_time,
  device_other_apps_active_count,
  device_other_apps_basic,
  env_gps_detail,
  video_play_cv,
  video_play_vv,
  video_play_pt,
  browser_content,
  wallpaper_set_content,
  calendar_content
) 
select named_struct('month', substr('${PARTITION}', 1, 6), 'day_imei', concat_ws('', '${PARTITION}', imei)) as key,
       map('', cast('-1' as bigint)) as a,
       map('', cast('-1' as bigint)) as b,
       map('', cast('-1' as bigint)) as c,
       map('', cast('-1' as bigint)) as d,
       map('', cast('-1' as bigint)) as e,
       map('', cast('-1' as bigint)) as f,
       map('', cast('-1' as bigint)) as g,
       map('', cast('-1' as bigint)) as h,
       map('', cast('-1' as bigint)) as i,
       map_append_key(collect(time_rn, gps), 'env_gps_', true) as gps,
       map('', cast('-1' as bigint)) as j,
       map('', cast('-1' as bigint)) as k,
       map('', cast('-1' as bigint)) as l,
       map('', cast('-1' as bigint)) as m,
       map('', cast('-1' as bigint)) as n,
       map('', cast('-1' as bigint)) as o 
  from (select imei,
               regexp_replace(gps, '\\[|\\]', '') as gps,
               concat_ws('_', cast(unix_timestamp(current_time, 'yyyyMMdd HH:mm:ss') as string), cast(row_number() over (partition by imei order by current_time) as string))  as time_rn
          from dwd.dwd_flow_sdk_phone_beat_day
         where dt = '${PARTITION}'
           and gps is not null
           and length(gps) > 1
           and gps != 'NonLocationInfo'
           and imei is not null
           and length(imei) = 15
) rn_table group by imei;
--explain
insert into table scloud_phone.phone_day_metric 
(
  key,
  env_version ,
  env_mode    ,
  env_ip      ,
  env_phone1  ,
  env_phone2  ,
  music_download,
  music_play,
  music_play_duration,
  music_active_time  ,
  music_active_count ,
  wallpaper_download ,
  wallpaper_set      ,
  wallpaper_active_time ,
  wallpaper_active_count ,
  music_play_content,
  eui_apps_all_event,
  device_other_apps_crash_count,
  device_other_apps_install,
  device_other_apps_upgrade,
  device_other_apps_uninstall,
  device_other_apps_active_time,
  device_other_apps_active_count,
  device_other_apps_basic,
  env_gps_detail,
  video_play_cv,
  video_play_vv ,
  video_play_pt,
  browser_content,
  wallpaper_set_content,
  calendar_content
)
select named_struct('month', substr('${PARTITION}', 1, 6), 'day_imei', concat_ws('', '${PARTITION}', imei)) as key,
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
       map_append_key(collect(song_id_base64, s_count), 'music_play_', true),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', cast('-1' as bigint)),
       map('', ''),
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
) as c_table where imei is not null and length(imei) = 15  group by imei;
--explain
insert into scloud_phone.phone_day_metric
(
 key,
 music_play_content,
 eui_apps_all_event ,
 device_other_apps_crash_count,
 device_other_apps_install,
 device_other_apps_upgrade,
 device_other_apps_uninstall,
 device_other_apps_active_time,
 device_other_apps_active_count,
 device_other_apps_basic,
 env_gps_detail, 
 video_play_cv,
 video_play_vv,
 video_play_pt,
 video_play_total_pt,
 browser_content,
 wallpaper_set_content,
 calendar_content
)
select  named_struct('month', substr('${PARTITION}', 1, 6), 'day_imei', concat_ws('', '${PARTITION}', imei)) as key,
        map('', cast('-1' as bigint)) as a,
        map('', cast('-1' as bigint)) as b,
        map('', cast('-1' as bigint)) as c,
        map('', cast('-1' as bigint)) as d,
        map('', cast('-1' as bigint)) as e,
        map('', cast('-1' as bigint)) as f,
        map('', cast('-1' as bigint)) as g,
        map('', cast('-1' as bigint)) as h,
        map('', cast('-1' as bigint)) as i,
        map('', '') as j,
        map_append_key(collect(concat_ws('_', app_name,  vid_id_base64), sum_vv), 'videoplay_vv_', true) as vv_count,
        map_append_key(collect(concat_ws('_', app_name,  vid_id_base64), sum_cv), 'videoplay_cv_', true) as cv_count,
        map_append_key(collect(concat_ws('_', app_name,  vid_id_base64), sum_pt), 'videoplay_pt_', true) as sum_pt,
        nvl(sum(sum_pt), 0) as total_pt,
        map('', cast('-1' as bigint)) as m,
        map('', cast('-1' as bigint)) as n,
        map('', cast('-1' as bigint)) as o
  from (select imei,
               app_name,
               base64(encode(vid,'UTF-8')) vid_id_base64,
               sum(vv) as sum_vv,
               sum(cv) as sum_cv,
               sum(pt) as sum_pt
          from dwd.dwd_flow_sdk_phone_video_play_day 
         where dt = '${PARTITION}'
           and imei is not null and length(imei) = 15 
           and vid is not null and length(vid) > 1
           and pt > 0 
           and app_name is not null
           and app_name in ('ZhuoMian', 'LeSportsTV', 'LesportsUltimateed', 'Clock', 'LetvUltimateed',
                             'Video', 'ChaoJiZhiBo', 'Dianshijia', 'app_super_video')
    group by imei,vid,app_name
 ) count_table group by imei;
