set role admin;
add jar hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/apps/dev/event-collect/client/bigdata-batch-0.0.0.9-SNAPSHOT.jar;
add jar hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/oozie/share/lib/lib_20151124162414/mysql/mysql-connector-java-5.1.38-bin.jar;
add jar hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/apps/dev/event-collect/client/brickhouse-0.7.1-SNAPSHOT.jar;
CREATE TEMPORARY FUNCTION map_append_key AS 'brickhouse.udf.collect.MapKeyAppendUDF';
--explain
insert into scloud_phone.t_app_active_count
select concat(substring(env_version, 8, 5), substring(env_version, 18, 1)) as version,
       env_mode,
       case when t_app_code.name is null then
         regexp_replace(active_time_table.active_count_app, 'device_active_count_', '')
       else
         t_app_code.name
       end app_name,
       active_time_count,
       imei_count,
       '${PARTITION}'
  from (select  count(imei) imei_count, 
                env_version,
                env_mode,
                active_count_app,
                sum(crash_value) active_time_count
          from (select split(crash_key, '#')[0]  as imei,
                       split(crash_key, '#')[1]  as env_version,
                       split(crash_key, '#')[2]  as env_mode,
                       split(crash_key, '#')[3]  as active_count_app,
                       crash_value
                 from (select explode(active_count_app) as (crash_key,crash_value)
                         from (select key, 
                                      map_append_key(device_other_apps_active_count,
                                                     concat_ws('#', key.day_imei,env_version, concat(env_mode,'#')), true) as active_count_app
                                 from scloud_phone.phone_day_metric 
                                where key.month = '${YM}' 
                                  and key.day_imei > '${PARTITION}' 
                                  and key.day_imei < '${PARTITION}999999999999999'
                                  and env_version is not null
                                  and env_mode is not null
                             order by key.day_imei
                           ) crash_map_key
                ) explode_table
        ) split_table group by env_version,env_mode,active_count_app
 ) active_time_table left join scloud_phone.t_app_code on (regexp_replace(active_time_table.active_count_app, 'device_active_count_', '')  = t_app_code.package_name);
--explain
insert into scloud_phone.t_app_active_time
select concat(substring(env_version, 8, 5), substring(env_version, 18, 1)) as version,
       env_mode,
       case when t_app_code.name is null then
         regexp_replace(active_time_table.active_time_app, 'device_active_time_', '')
       else
         t_app_code.name
       end app_name,
       active_time_count,
       '${PARTITION}'
  from (select  env_version,
                env_mode,
                active_time_app,
                sum(crash_value) active_time_count
          from (select split(crash_key, '#')[0]  as env_version,
                       split(crash_key, '#')[1]  as env_mode,
                       split(crash_key, '#')[2]  as active_time_app,
                       crash_value
                 from (select explode(active_time_map) as (crash_key,crash_value)
                         from (select key, 
                                      map_append_key(device_other_apps_active_time, concat_ws('#',env_version, concat(env_mode,'#')), true) as active_time_map
                                 from scloud_phone.phone_day_metric 
                                where key.month = '${YM}' 
                                  and key.day_imei > '${PARTITION}' 
                                  and key.day_imei < '${PARTITION}999999999999999'
                                  and env_version is not null
                                  and env_mode is not null
                             order by key.day_imei
                           ) crash_map_key
                ) explode_table
        ) split_table group by env_version,env_mode,active_time_app
 ) active_time_table left join scloud_phone.t_app_code on (regexp_replace(active_time_table.active_time_app, 'device_active_time_', '')  = t_app_code.package_name);
--explain
insert into scloud_phone.t_app_crash
select concat(substring(env_version, 8, 5), substring(env_version, 18, 1)) as version,
       env_mode,
       case when t_app_code.name is null then
         regexp_replace(active_time_table.crash_app, 'device_crash_', '')
       else
         t_app_code.name
       end app_name,
       active_time_count,
       imei_count,
       '${PARTITION}'
  from (select  count(imei) as imei_count,
                env_version,
                env_mode,
                crash_app,
                sum(crash_value) active_time_count
          from (select split(crash_key, '#')[0]  as imei,
                       split(crash_key, '#')[1]  as env_version,
                       split(crash_key, '#')[2]  as env_mode,
                       split(crash_key, '#')[3]  as crash_app,
                       crash_value
                 from (select explode(crash_count_map) as (crash_key,crash_value)
                         from (select key, 
                                      map_append_key(device_other_apps_crash_count, concat_ws('#',key.day_imei,env_version, concat(env_mode,'#')), true) as crash_count_map
                                 from scloud_phone.phone_day_metric 
                                where key.month = '${YM}' 
                                  and key.day_imei > '${PARTITION}' 
                                  and key.day_imei < '${PARTITION}999999999999999'
                                  and env_version is not null
                                  and env_mode is not null
                             order by key.day_imei
                           ) crash_map_key
                ) explode_table
        ) split_table group by env_version,env_mode,crash_app
) active_time_table left join scloud_phone.t_app_code on (regexp_replace(active_time_table.crash_app, 'device_crash_', '')  = t_app_code.package_name);
--explain
insert into scloud_phone.t_app_cube_music
--(version,product_mode,download_times,play_times, download_imei_count, play_imei_count,day_active_count, day)
select env_version,
       env_mode,
       sum(music_download),
       sum(music_play) ,
       sum(download_count) as download_imei,
       sum(play_count) as play_imei,
       sum(music_active_count) as day_active_count,
       '${PARTITION}'
  from (select  env_version,
                env_mode,
                music_download,
                music_play,
                music_active_count,
                case when music_download is not null and music_download > 0 
                  then 1 
                else 
                  0 
                end as download_count,
                case when music_play is not null and music_play > 0 
                  then 1 
                else 0 end play_count,
                 '${PARTITION}'
              from scloud_phone.phone_day_metric 
              where (key.month = '${YM}' and  key.day_imei > '${PARTITION}' and key.day_imei < '${PARTITION}999999999999999')
              and env_version is not null 
              and env_mode is not null
) count_table group by env_version,env_mode;
insert into scloud_phone.t_app_cube_wallpaper
--(
--   version,
--   product_mode,
--   download_times,
--   set_times,
--   download_imei_count,
--   set_imei_count,
--   day_active_count, 
--   day
--)
select env_version,
       env_mode,
       sum(wallpaper_download),
       sum(wallpaper_set) ,
       sum(download_count) ,
       sum(set_count) ,
       sum(wallpaper_active_count) ,
       '${PARTITION}'
  from (select  env_version,
                env_mode,
                wallpaper_download, --music_download,
                wallpaper_set, --music_play,
                wallpaper_active_count, --music_active_count,
                case when wallpaper_download is not null and wallpaper_download > 0 
                  then 1
                else 
                  0
                end as download_count,
                case when wallpaper_set is not null and wallpaper_set > 0 
                  then 1
                else 0 end set_count,
                 '${PARTITION}'
              from scloud_phone.phone_day_metric
              where (key.month = '${YM}' and  key.day_imei > '${PARTITION}' and key.day_imei < '${PARTITION}999999999999999')
              and env_version is not null 
              and env_mode is not null
) count_table group by env_version,env_mode;
--explain
insert into scloud_phone.t_phone_active_day
select env_version,
       env_mode, 
       count(key.day_imei), 
       '${PARTITION}' 
  from scloud_phone.phone_day_metric
 where key.month = '${YM}'
  and key.day_imei > '${PARTITION}'
  and key.day_imei < '${PARTITION}999999999999999'
group by env_version,env_mode;
set hbase.mapred.outputtable="device_day_metric_kt";
--explain
insert into scloud_phone.device_day_metric_kt
(`key` , 
`env_version` , 
`env_mode` , 
`env_ip` , 
`env_country_code` , 
`env_country_name` , 
`env_region_code` , 
`env_region_name` , 
`env_province_code` , 
`env_province_name` , 
`env_city_code` , 
`env_city_name` , 
`env_isp` , 
`env_gps` , 
`env_phone1` , 
`env_phone2` , 
`music_download` , 
`music_play` , 
`music_play_duration` , 
`music_active_time` , 
`music_active_count` , 
`wallpaper_download` , 
`wallpaper_set` , 
`wallpaper_active_time` , 
`wallpaper_active_count` , 
`music_play_content` , 
`eui_apps_all_event` , 
`device_other_apps_crash_count` , 
`device_other_apps_install` , 
`device_other_apps_upgrade` , 
`device_other_apps_uninstall` , 
`device_other_apps_active_time` , 
`device_other_apps_active_count` , 
`device_other_apps_basic` , 
`env_letv_uid` , 
`env_gps_detail`, 
`video_play_cv` , 
`video_play_vv` , 
`video_play_pt` , 
`video_play_total_pt` ,
`browser_content` ,
`wallpaper_set_content` ,
`calendar_content`)
select concat(substring(key.day_imei, 9, length(key.day_imei) - 8), substring(key.day_imei, 1, 8)),
       `env_version` , 
       `env_mode` , 
       `env_ip` , 
       `env_country_code` , 
       `env_country_name` , 
       `env_region_code` , 
       `env_region_name` , 
       `env_province_code` , 
       `env_province_name` , 
       `env_city_code` , 
       `env_city_name` , 
       `env_isp` , 
       `env_gps` , 
       `env_phone1` , 
       `env_phone2` , 
       `music_download` , 
       `music_play` , 
       `music_play_duration` , 
       `music_active_time` , 
       `music_active_count` , 
       `wallpaper_download` , 
       `wallpaper_set` , 
       `wallpaper_active_time` , 
       `wallpaper_active_count` , 
       `music_play_content` , 
       `eui_apps_all_event` , 
       `device_other_apps_crash_count` , 
       `device_other_apps_install` , 
       `device_other_apps_upgrade` , 
       `device_other_apps_uninstall` , 
       `device_other_apps_active_time` , 
       `device_other_apps_active_count` , 
       `device_other_apps_basic` ,
       `env_letv_uid` , 
       `env_gps_detail`, 
       `video_play_cv` , 
       `video_play_vv` , 
       `video_play_pt` , 
       `video_play_total_pt` ,
       `browser_content` ,
       `wallpaper_set_content` ,
       `calendar_content`
  from scloud_phone.phone_day_metric 
 where key.month = '${YM}'
   and key.day_imei > '${PARTITION}'
   and key.day_imei < '${PARTITION}999999999999999' 
   and env_version is not null 
   and length(key.day_imei) = 23;
