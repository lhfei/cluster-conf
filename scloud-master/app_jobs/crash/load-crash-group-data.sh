#!/bin/bash

LOGIPS=(106.38.226.71)
load_data_dir=/home/scloud/crash-script/crash-data
now=`date +%Y-%m-%d-%H:%M:%S`
echo 'load data start date = '$now
program_path=$(dirname $0)
program_path=${program_path/\./$(pwd)}'/'
program_path_desc=$(echo $program_path | sed 's_/_\\/_g')
json_serde_jar='json-serde-1.3.1-SNAPSHOT-jar-with-dependencies.jar'
tmp_count_app_day_sql='/tmp/tmp_count_app_day.sql'
tmp_count_imei_day_sql='/tmp/tmp_count_imei_day.sql'
data_bak=/home/scloud/crash-script/data-bak
printf "current program path : %s  \n" "$program_path"
add_resource=$program_path_desc$json_serde_jar

short_now=`date -d '-1 days' +%Y%m%d`
query_app_columns='export-app-count-'$short_now
query_imei_columns='export-imei-count-'$short_now

mkdir -p $program_path$query_app_columns
mkdir -p $program_path$query_imei_columns

count_app_day_sql=`cat $program_path'query-app-day.sql'`
final_count_app_day_sql=`echo $count_app_day_sql | sed -e 's/FLAG_PLACE/'$program_path_desc$query_app_columns'/g'`
final_count_app_day_sql=`echo $final_count_app_day_sql| sed -e 's/DAY/'$short_now'/g'`
echo -e $final_count_app_day_sql  > $tmp_count_app_day_sql

count_imei_day_sql=`cat $program_path'query-imei-day.sql'`
final_count_imei_day_sql=`echo $count_imei_day_sql | sed -e 's/FLAG_PLACE/'$program_path_desc$query_imei_columns'/g'`
final_count_imei_day_sql=`echo $final_count_imei_day_sql | sed -e 's/DAY/'$short_now'/g'`
echo -e $final_count_imei_day_sql > $tmp_count_imei_day_sql

#printf "query partition column sql : %s \n"  "$final_query_partition_column_sql"

export partition_array=();

function load_basic_data_one_file() {
  YESTERDAY=`date -d '-1 days' +%Y-%m-%d`
  echo 'LOAD-CRASH-DATA TIME = '$YESTERDAY
  # insert_into_all='insert into table crash.t_crash_info_all select * from crash.t_crash_info'
  tmp_file='crash_tmp.data'
  for logip in ${LOGIPS[@]} 
  do
    file=$load_data_dir/$logip/crash-$YESTERDAY.txt
    echo 'load inpath = '$file
    echo 'add Jar Path = '$program_path$json_serde_jar
    echo ` hive -e "add jar $program_path$json_serde_jar; load data local inpath '$file' overwrite into table crash.t_crash_info_all" > /dev/null 2>&1`
    mv $file $load_data_dir/$logip/$tmp_file 
    echo 'tmp file = '$load_data_dir/$logip/$tmp_file
    echo ` hive -e "add jar $program_path$json_serde_jar; load data local inpath '$load_data_dir/$logip/$tmp_file' overwrite into table crash.t_crash_info" > /dev/null 2>&1`
    if [ $? -eq 0 ]; then
      stop_time=`date +%Y-%m-%d-%H:%M:%S`
      echo 'load partition succrss time = '$stop_time ' start insert_crash_group'
      insert_crash_group
     # insert_imei_crash_group
      # rm -rf $file
      # echo 'move file to data_bak -> '$data_bak
     # mv $load_data_dir/$logip/$tmp_file $data_bak/$tmp_file-$logip-$YESTERDAY
    else 
        echo 'load partition error.'
    fi
    #rm -rf $data_bak/crash-$BEFORE_YESTERDAY-*.txt
    #echo 'compression '$YESTERDAY' crash data use tar.bz2'
    #tar -cjvf $data_bak/crash-$YESTERDAY.tar.bz2  $data_bak/crash-$YESTERDAY-*.txt
  done
}

function load_basic_data() {
  # YESTERDAY=`date -d '-1 days' +%Y-%m-%d-%H`
  YESTERDAY=`date -d '-1 days' +%Y-%m-%d`
  BEFORE_YESTERDAY=`date -d '-2 days' +%Y-%m-%d`
  echo 'CRASH-DATA TIME = '$YESTERDAY
  # insert_into_all='insert into table crash.t_crash_info_all select * from crash.t_crash_info'
  tmp_file='crash_tmp.data'
  for logip in ${LOGIPS[@]} 
  do
    index=0
    for file in `ls $load_data_dir/$logip/crash-$YESTERDAY.txt`
    do
      echo 'load inpath = '$file
      echo 'add Jar Path = '$program_path$json_serde_jar
      echo ` hive -e "add jar $program_path$json_serde_jar; load data local inpath '$file' overwrite into table crash.t_crash_info_all" > /dev/null 2>&1`
      mv $file $load_data_dir/$logip/$tmp_file 
      echo 'tmp file = '$load_data_dir/$logip/$tmp_file
      echo ` hive -e "add jar $program_path$json_serde_jar; load data local inpath '$load_data_dir/$logip/$tmp_file' overwrite into table crash.t_crash_info" > /dev/null 2>&1`
      if [ $? -eq 0 ]; then
        stop_time=`date +%Y-%m-%d-%H:%M:%S`
        echo 'load partition succrss time = '$stop_time ' start insert_crash_group'
        insert_crash_group
        insert_imei_crash_group
        # rm -rf $file
        # echo 'move file to data_bak -> '$data_bak
        mv $load_data_dir/$logip/$tmp_file $data_bak/$tmp_file-$logip-$index
        ((index++))
      else 
        echo 'load partition error.'
      fi
    done
    #rm -rf $data_bak/crash-$BEFORE_YESTERDAY-*.txt
    #echo 'compression '$YESTERDAY' crash data use tar.bz2'
    #tar -cjvf $data_bak/crash-$YESTERDAY.tar.bz2  $data_bak/crash-$YESTERDAY-*.txt
  done
}

function insert_imei_crash_group() {
  echo `hive -f $tmp_count_imei_day_sql > $program_path$query_imei_columns/count_val`
  count=`cat $program_path$query_imei_columns/count_val`
  echo 'check app count = '$program_path$query_app_columns
  
  while [ "$count" -eq "0" ]
  do
    echo `hive -f $tmp_count_imei_day_sql > $program_path$query_imei_columns/count_val`
    count=`cat $program_path$query_imei_columns/count_val`
    echo 'tmp_count_imei_day_sql count = '$count
    sleep 20m
  done

  set_nostrit='set hive.exec.dynamic.partition=true; set hive.exec.dynamic.partition.mode=nonstrict; '
  insert_sql='insert into table crash.t_crash_info_imei_group PARTITION(day)'
  select_sql=' select app_group.product_model,
       app_group.build_version,
       app_group.version_type,  
       app_group.ui_version,
       app_group.error_process_nickname,
       app_group.app_name,
       imei_group.error_subtype_id,
       app_group.app_crash_count,
       app_group.imei_app_count,
       imei_group.imei_subtype_count,
       imei_group.subtype_count,
       imei_group.error_subtype_ready,
	"",
	"",
       app_group.day
  from (
select product_model,build_version,
       version_type,ui_version, error_process_nickname,
       app_name, crash_info.day,count(error_process_nickname) app_crash_count,
       count(distinct imei)  imei_app_count
  from crash.t_crash_info as crash_info
 group by crash_info.product_model,crash_info.build_version,crash_info.version_type,crash_info.ui_version,crash_info.error_process_nickname,
               crash_info.app_name, crash_info.day) as app_group
join (
  select error_subtype_id,error_subtype_ready,
         product_model,
         build_version,
         version_type,
         ui_version,
         app_name, day, error_process_nickname,
         count(distinct imei) imei_subtype_count,
         count(error_subtype_id) subtype_count
        from crash.t_crash_info as crash_info_1
    where length(error_process_nickname) > 0
      group by crash_info_1.product_model,
               crash_info_1.build_version,
               crash_info_1.version_type,crash_info_1.ui_version,
               crash_info_1.error_process_nickname,
               crash_info_1.app_name,
               crash_info_1.error_subtype_id,crash_info_1.error_subtype_ready,crash_info_1.day
) as imei_group on (
      imei_group.day = app_group.day
     and imei_group.app_name = app_group.app_name
     and imei_group.product_model = app_group.product_model
     and imei_group.version_type = app_group.version_type
     and imei_group.build_version = app_group.build_version
     and imei_group.ui_version = app_group.ui_version
     and imei_group.error_process_nickname = app_group.error_process_nickname
  ) '
   insert_select_sql=$set_nostrit' add jar '$program_path$json_serde_jar';'$insert_sql$select_sql
   tmp_group_sql='/tmp/tmp_imei_crash_group.sql'
   echo  $insert_select_sql > $tmp_group_sql
   echo `hive -f $tmp_group_sql`
   echo `rm -rf $tmp_group_sql`
   stop=`date +%Y-%m-%d-%H:%M:%S`
   echo 'load data by error_type and imei stop date = '$stop
}


function insert_crash_group() {
  echo `hive -f $tmp_count_app_day_sql > $program_path$query_app_columns/count_val`
  count=`cat $program_path$query_app_columns/count_val`
  echo 'check app count = '$program_path$query_app_columns

  while [ "$count" -eq "0" ]
  do
     echo `hive -f $tmp_count_app_day_sql > $program_path$query_app_columns/count_val`
     count=`cat $program_path$query_app_columns/count_val`
     echo 'tmp_count_app_day_sql count = '$count
     sleep 20m
  done 
 
  set_nostrit='set hive.exec.dynamic.partition=true; set hive.exec.dynamic.partition.mode=nonstrict; '
  insert_sql='insert into table crash.t_crash_info_group PARTITION(day)'
  select_sql='select crash_group.product_model,crash_group.build_version,
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
          from data_sum.sum_sdk_phone_imei_his_day as imei_his_day join data_sum.sum_sdk_phone_app_day as sdk_phone_app_day
            on (imei_his_day.imei = sdk_phone_app_day.imei and imei_his_day.dt = sdk_phone_app_day.dt)
         where (imei_his_day.dt = sdk_phone_app_day.dt) 
          and length(imei_his_day.build_version) = 18
          and length(imei_his_day.imei) >= 10
      ) as t1 group by t1.build_version, t1.version_type, t1.ui_version, t1.app_name,t1.dt
) as sum_group on (
   crash_group.build_version = sum_group.build_version
   and crash_group.version_type = sum_group.version_type
   and crash_group.ui_version = sum_group.ui_version
   and regexp_replace(crash_group.day,"-", "") = sum_group.dt
   and crash_group.app_name = sum_group.app_name)'
   insert_select_sql=$set_nostrit' add jar '$program_path$json_serde_jar';'$insert_sql$select_sql
   tmp_group_sql='/tmp/tmp_crash_group.sql'
   echo  $insert_select_sql > $tmp_group_sql
   echo `hive -f $tmp_group_sql`
   echo `rm -rf $tmp_group_sql`
   stop=`date +%Y-%m-%d-%H:%M:%S`
   echo 'load data by app stop date = '$stop
}

#load_basic_data
load_basic_data_one_file
#check_app_day
#insert_imei_crash_group
