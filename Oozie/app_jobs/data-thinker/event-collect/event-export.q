add jar hdfs://centos10-80.letv.cn:8020/user/cloudland/apps/event-collect/client/bigdata-batch-0.0.0.9-SNAPSHOT.jar;
add jar hdfs://centos10-80.letv.cn:8020/user/oozie/share/lib/lib_20151119202305/mysql-connector-java.jar;
--explain
insert into scloud_phone.t_app_cube_music_test
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
              from scloud_phone.device_day_metric_test 
              where (key.month = '${YM}' and  key.day_imei > '${PARTITION}' and key.day_imei < '${YM}24999999999999999')
              and env_version is not null 
              and env_mode is not null
) count_table group by env_version,env_mode;


--explain

insert into scloud_phone.t_app_cube_wallpaper_test
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
              from scloud_phone.device_day_metric_test
              where (key.month = '${YM}' and  key.day_imei > '${PARTITION}' and key.day_imei < '${YM}24999999999999999')
              and env_version is not null 
              and env_mode is not null
) count_table group by env_version,env_mode;
