#!/bin/bash

######################################################
# Export data.
# @from dmr.dmr_phone_outfact_daily
# @to 	`phone_dashboard`.`DMR_MOBILE_OUTFACT_DAILY` 
# @host	jdbc:mysql://10.148.10.66
######################################################

for i in {1..1}
do
  current=$(date +%Y%m%d -d -${i}day)

  echo "==== partition[${current}] ==== "

  create_hql="use scloud_phone; create table if not exists dmr_phone_outfact_daily( last_update string, cdt string, model string, storage string, zhishi string, color string, version string, out_day string, out_all bigint, dt string) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' ; "
  query_hql="INSERT OVERWRITE TABLE scloud_phone.dmr_phone_outfact_daily SELECT * FROM dmr.dmr_phone_outfact_daily WHERE dt=${current} ;"

  hive -e "$create_hql"
  hive -e "$query_hql"

  echo "export data to MySQL table dmr_phone_outfact_daily .... "
  sqoop export --connect jdbc:mysql://10.148.10.66:3306/phone_dashboard --table DMR_PHONE_OUTFACT_DAILY  \
    --export-dir hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/apps/hive/warehouse/scloud_phone.db/dmr_phone_outfact_daily --input-null-string '\\N'  --input-null-non-string '\\N' \
    --username scloud-dev -password {MY_PASSWORD} --input-fields-terminated-by "\t"
done
