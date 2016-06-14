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
select named_struct('month', substr('20151124', 1, 6), 'day_imei', concat_ws('', '20151124', imei)) as key,
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
        where dt = '20151124' 
          and imei is not null and length(imei) = 15
         --and imei = '866479021496608'
          and group_id is not null
          and software_version is not null 
          and length(software_version) = 18
          and model is not null
       group by imei
) distinct_table
