#!/bin/bash

############################################################
# // todo   											   #
# ---------------------------------------------------- --- #
# Hive version: 1.4.0  +                                   #
############################################################

current=$(date +%Y%m%d -d -1day)
##
hive -e "INSERT OVERWRITE TABLE scloud_phone.phone_active_ctime_obs SELECT * FROM scloud_phone.phone_active_ctime WHERE SUMMARY_DATE='$current' ;"

hive -e "INSERT OVERWRITE TABLE scloud_phone.phone_network_halfhour_obs SELECT * FROM scloud_phone.network_halfhour WHERE SUMMARY_DATE='$current' ;"

## export data to MySQL DB.
#
# PHONE_ACTIVATION_TIME
# 
echo "export data to MySQL table PHONE_ACTIVATION_TIME .... "
  sqoop export --connect jdbc:mysql://10.148.10.84:3306/phone_dashboard --table PHONE_ACTIVATION_TIME  \
    --export-dir hdfs://centos10-80.letv.cn:8020/apps/hive/warehouse/scloud_phone.db/phone_active_ctime_obs --validate --input-null-string '\\N'  --input-null-non-string '\\N' \
    --username scloud-dev -password {MY_PASSWORD} --input-fields-terminated-by "\t"

echo "export data to MySQL table PHONE_NETWORK_HALFHOUR .... "
  sqoop export --connect jdbc:mysql://10.148.10.84:3306/phone_dashboard --table PHONE_NETWORK_HALFHOUR  \
    --export-dir hdfs://centos10-80.letv.cn:8020/apps/hive/warehouse/scloud_phone.db/phone_network_halfhour_obs --validate --input-null-string '\\N'  --input-null-non-string '\\N' \
    --username scloud-dev -password {MY_PASSWORD} --input-fields-terminated-by "\t"

