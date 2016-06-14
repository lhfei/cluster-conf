#!/bin/bash

LOGIPS=(106.38.226.71)
YESTERDAY=`date -d '-1 days' +%Y-%m-%d`
now=`date +%Y-%m-%d-%H:%M:%S`
#load_data_dir=/home/scloud/crash-script/crash-data
load_data_dir=/letv/cloudland/app_jobs/crash/data_bak/
echo 'load data start date = '$now
program_path=$(dirname $0)
program_path=${program_path/\./$(pwd)}'/'
program_path_desc=$(echo $program_path | sed 's_/_\\/_g')
json_serde_jar='json-serde-1.3.1-SNAPSHOT-jar-with-dependencies.jar'
tmp_count_app_day_sql='/tmp/tmp_count_app_day.sql'
tmp_count_imei_day_sql='/tmp/tmp_count_imei_day.sql'
#data_bak=/home/scloud/crash-script/data-bak
printf "current program path : %s  \n" "$program_path"
add_resource=$program_path_desc$json_serde_jar
short_now=`date -d '-1 days' +%Y%m%d`
query_app_columns='export-app-count-'$short_now
query_imei_columns='export-imei-count-'$short_now

#mkdir -p $program_path$query_app_columns
#mkdir -p $program_path$query_imei_columns

#count_app_day_sql=`cat $program_path'query-app-day.sql'`
#final_count_app_day_sql=`echo $count_app_day_sql | sed -e 's/FLAG_PLACE/'$program_path_desc$query_app_columns'/g'`
#final_count_app_day_sql=`echo $final_count_app_day_sql| sed -e 's/DAY/'$short_now'/g'`
#echo -e $final_count_app_day_sql  > $tmp_count_app_day_sql

#count_imei_day_sql=`cat $program_path'query-imei-day.sql'`
#final_count_imei_day_sql=`echo $count_imei_day_sql | sed -e 's/FLAG_PLACE/'$program_path_desc$query_imei_columns'/g'`
#final_count_imei_day_sql=`echo $final_count_imei_day_sql | sed -e 's/DAY/'$short_now'/g'`
#echo -e $final_count_imei_day_sql > $tmp_count_imei_day_sql

#printf "query partition column sql : %s \n"  "$final_query_partition_column_sql"

export partition_array=();

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
    ds=` hive -e "add jar $program_path$json_serde_jar; load data local inpath '$load_data_dir/$logip/$tmp_file' overwrite into table crash.t_crash_info PARTITION(day=\"${YESTERDAY}\")" > /tmp/load.log 2>&1`
    if [ $? -eq 0 ]; then
      stop_time=`date +%Y-%m-%d-%H:%M:%S`
	rm -rf $load_data_dir/$logip/$tmp_file
      echo 'load partition succrss time = '$stop_time ' start insert_crash_group'
#      insert_crash_group
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
load_basic_data_one_file
