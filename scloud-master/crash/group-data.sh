function insert_crash_group() {
json_serde_jar='json-serde-1.3.1-SNAPSHOT-jar-with-dependencies.jar'
program_path='/letv/cloudland/app_jobs/crash/'
 # echo `hive -f $tmp_count_app_day_sql > $program_path$query_app_columns/count_val`
 # count=`cat $program_path$query_app_columns/count_val`
  #echo 'check app count = '$program_path$query_app_columns

  #while [ "$count" -eq "0" ]
  #do
   #  echo `hive -f $tmp_count_app_day_sql > $program_path$query_app_columns/count_val`
    # count=`cat $program_path$query_app_columns/count_val`
     #echo 'tmp_count_app_day_sql count = '$count
     #sleep 20m
 # done 
YESTERDAY=`date -d '-1 days' +%Y-%m-%d`
  set_nostrit='set hive.exec.dynamic.partition=true; set hive.exec.dynamic.partition.mode=nonstrict; '
 # echo `hive -e "add jar" $program_path$json_serde_jar`;
  insert_sql="insert into table crash.t_crash_info_group PARTITION(day)"
  select_sql=" select crash_group.product_model,crash_group.build_version,
       crash_group.version_type, crash_group.ui_version, crash_group.error_process_nickname,
       crash_group.app_name,
       crash_group.crash_count,
       nvl(sum_group.start_app_times, 0),
       crash_group.day
 from ( select product_model, build_version,
             version_type,ui_version,
             error_process_nickname,
             app_name,day,count(error_process_nickname) crash_count
        from crash.t_crash_info as crash_info
        where day=\"${YESTERDAY}\"
      group by crash_info.product_model, crash_info.build_version,
               crash_info.version_type, crash_info.ui_version,
               crash_info.error_process_nickname, crash_info.app_name,
               crash_info.day
) as crash_group
left join (select t1.build_version, t1.version_type,t1.dt,
             t1.ui_version, t1.app_name, count(t1.app_run_id) as start_app_times
      from (
        select imei_his_day.build_version, imei_his_day.dt as dt,
               substr(imei_his_day.build_version, -1) as version_type,
               concat(substr(imei_his_day.build_version, 8, 5), substr(imei_his_day.build_version, -1)) as ui_version,
               sdk_phone_app_day.app_run_id,sdk_phone_app_day.app_name
          from dwd.dwd_pty_sdk_phone_imei_his_day as imei_his_day join dwd.dwd_flow_sdk_phone_app_day as sdk_phone_app_day
            on (imei_his_day.imei = sdk_phone_app_day.imei and imei_his_day.dt = sdk_phone_app_day.dt)
         where (imei_his_day.dt = sdk_phone_app_day.dt) 
          and length(imei_his_day.build_version) = 18
          and length(imei_his_day.imei) >= 10
      ) as t1 group by t1.build_version, t1.version_type, t1.ui_version, t1.app_name,t1.dt
) as sum_group on (
   crash_group.build_version = sum_group.build_version
   and crash_group.version_type = sum_group.version_type
   and crash_group.ui_version = sum_group.ui_version
   and regexp_replace(crash_group.day,'-', '') = sum_group.dt
   and crash_group.app_name = sum_group.app_name)"
   insert_select_sql=$set_nostrit' add jar '$program_path$json_serde_jar';'$insert_sql$select_sql
   tmp_group_sql='/tmp/tmp_crash_group.sql'
   echo  $insert_select_sql > $tmp_group_sql
   echo `hive -f $tmp_group_sql`
   echo `rm -rf $tmp_group_sql`
   stop=`date +%Y-%m-%d-%H:%M:%S`
   echo 'load data by app stop date = '$stop
}
insert_crash_group
