#!/bin/bash

hdhome=/usr/hdp/2.3.2.0-2950/hadoop
yearMonth="yearMonth=$(date +%Y%m -d -1day)"
yesterday="partition=$(date +%Y%m%d -d -1day)"

echo ${yearMonth}
echo ${yesterday}

sed -i "s/yearMonth=.*/$yearMonth/g"  /letv/cloudland/app_tmp/oozie/event-collect/job.properties
sed -i "s/partition=.*/$yesterday/g" /letv/cloudland/app_tmp/oozie/event-collect/job.properties

rm -rf /letv/cloudland/app_tmp/oozie/event-collect/*.q
rm -rf /letv/cloudland/app_tmp/oozie/event-collect/client

$hdhome/bin/hdfs dfs -get /user/cloudland/apps/dev/event-collect/*.q  /letv/cloudland/app_tmp/oozie/event-collect/
$hdhome/bin/hdfs dfs -get /user/cloudland/apps/dev/event-collect/client  /letv/cloudland/app_tmp/oozie/event-collect/client

$hdhome/bin/hdfs dfs -mkdir -p /user/cloudland/apps/produce/event-collect
$hdhome/bin/hdfs dfs -rm -r -skipTrash /user/cloudland/apps/produce/event-collect/*
$hdhome/bin/hdfs dfs -put /letv/cloudland/app_tmp/oozie/event-collect/* /user/cloudland/apps/produce/event-collect/


echo "==== ==== ====[$(date)]: job[event-collect] running. ==== ==== ==== "

/usr/hdp/2.3.2.0-2950/oozie/bin/oozie job -run -config /letv/cloudland/app_tmp/oozie/event-collect/job.properties -oozie http://basic.internal.hadoop.10-148-10-13.scloud.letv.com:11000/oozie

echo "==== ==== ====[$(date)]: job[event-collect] done. ==== ==== ==== "
