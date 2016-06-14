#!/bin/bash

LOGIPS=(106.38.226.71)
FLAG=$1
rm -rf /tmp/crash-data.log
USER=scloud
HIVEDB=crash
LOGTB=t_crash_info
GROUP_LOG_TABLE=t_crash_info_group
DESTDIR=/letv/cloudland/app_jobs/crash/data_bak/
REMOTE_DIR=data/
DATE=`date -d  '-1 day' +%Y-%m-%d`
YESTERDAY=`date -d '-1 days' +%Y-%m-%d`
now=`date +%Y-%m-%d-%H:%M:%S`
load_data_dir=/letv/cloudland/app_jobs/crash/data_bak/
program_path=$(dirname $0)
program_path=${program_path/\./$(pwd)}'/'
program_path_desc=$(echo $program_path | sed 's_/_\\/_g')
json_serde_jar='json-serde-1.3.1-SNAPSHOT-jar-with-dependencies.jar'
add_resource=$program_path_desc$json_serde_jar
short_now=`date -d '-1 days' +%Y%m%d`
export partition_array=();


echo "=============================================="
echo "==== partition = $YESTERDAY ==== "

function load_data() {
  LOGFILE=$REMOTE_DIR'crash-'${DATE}.txt
  echo "load_data() remote data-file : "$LOGFILE
  for logip in ${LOGIPS[@]}
       do
          echo "load data-dir : "$logip
          # rm -rf $DESTDIR/$logip
          mkdir -p $DESTDIR/$logip
          # scp -r $USER@$logip:$LOGFILE $DESTDIR/$logip/ 
          rsync -arzP $logip::$LOGFILE $DESTDIR/$logip/
          if [ $? -eq 0 ]; then
            echo 'rsync success !'
          else
            echo 'rsync error.'
          fi
   done
}

function load_basic_data_one_file() {
  YESTERDAY=`date -d '-1 days' +%Y-%m-%d`
  echo 'LOAD-CRASH-DATA TIME = '$YESTERDAY
  # insert_into_all='insert into table crash.t_crash_info_all select * from crash.t_crash_info'
  tmp_file='crash_tmp.data'$YESTERDAY
  for logip in ${LOGIPS[@]}
  do
    file=$load_data_dir/$logip/crash-$YESTERDAY.txt
    echo 'load inpath = '$file
    echo 'add Jar Path = '$program_path$json_serde_jar
    echo ` hive -e "add jar $program_path$json_serde_jar; load data local inpath '$file' overwrite into table crash.t_crash_info_all" > /dev/null 2>&1`
    mv $file $load_data_dir/$logip/$tmp_file
    echo 'tmp file = '$load_data_dir/$logip/$tmp_file
    ` hive -e "add jar $program_path$json_serde_jar; load data local inpath '$load_data_dir/$logip/$tmp_file' overwrite into table crash.t_crash_info PARTITION(day=\"${YESTERDAY}\")" > /tmp/load.log 2>&1`
    if [ $? -eq 0 ]; then
      stop_time=`date +%Y-%m-%d-%H:%M:%S`
        rm -rf $load_data_dir/$logip/$tmp_file
      echo 'load partition succrss time = '$stop_time ' start insert_crash_group'
     #insert_crash_group
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

function insert_crash_group() {
#json_serde_jar='json-serde-1.3.1-SNAPSHOT-jar-with-dependencies.jar'
#program_paths='/letv/cloudland/app_jobs/crash/'
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

load_data
load_basic_data_one_file
#insert_crash_group
