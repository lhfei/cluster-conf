add jar /root/workspace/brickhouse-0.7.1-SNAPSHOT.jar;
add jar /root/workspace/crash/json-serde-1.3.1-SNAPSHOT-jar-with-dependencies.jar;
CREATE TEMPORARY FUNCTION collect AS 'brickhouse.udf.collect.CollectUDAF';
CREATE TEMPORARY FUNCTION map_append_key AS 'brickhouse.udf.collect.MapKeyAppendUDF';
set hbase.mapred.outputtable="device_day_metric_new";
explain
insert into scloud_phone.device_day_metric (
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
select named_struct('month', substr('20160105', 1, 6), 'day_imei', concat_ws('', '20160105', imei)) as key, 
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
                where regexp_replace(day, '-', '') = '20160105'
                  --day = '20151124'
                  --day= concat_ws('-', substr('20151124', 1, 4), substr('20151124', 4, 2), substr('20151124', 6, 2))
                  and error_process is not null
                  and length(error_process) > 1
                  and imei is not null
                  and length(imei)=15 
              group by imei,error_process limit 10
     ) c_table group by imei
) g_table;

