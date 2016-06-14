#!/bin/bash


hadoop_prefix=/usr/hdp/2.3.2.0-2950/hadoop
tables_list_path=/letv/cloudland/app_jobs/rsync_hdfs_file

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}

for d in {1..1}
do
  current=$(date +%Y%m%d -d -${d}day)
  echo "--------------[$current]------------------------"
  #rsync schema dmr of data
  echo "===== [$tname] start  exporting ..."
   
  hive -e "insert overwrite table dmr.dmr_phone_outfact_daily_obs select * from dmr.dmr_phone_outfact_daily where dt = '$current';"

echo "export data to MySQL table PHONE_NETWORK_HALFHOUR .... "
  sqoop export --connect jdbc:mysql://centos10-84:3306/phone_dashboard --table DMR_MOBILE_OUTFACT_DAILY  \
    --export-dir hdfs://centos10-80.letv.cn:8020/apps/hive/warehouse/dmr.db/dmr_phone_outfact_daily_obs --validate --input-null-string '\\N'  --input-null-non-string '\\N' \
    --username scloud-dev -password {MY_PASSWORD} --input-fields-terminated-by "\t"


done
