#!/bin/bash

hdhome=/usr/hdp/2.3.2.0-2950/hadoop
yearMonth="yearMonth=$(date +%Y%m)"


for i in {1..7}
do
  yesterday="partition=$(date +%Y%m%d -d -${i}day)"


  echo ${yearMonth}
  echo ${yesterday}

  sed -i "s/yearMonth=.*/$yearMonth/g"  /letv/cloudland/app_tmp/oozie/event-collect/job.properties
  sed -i "s/partition=.*/$yesterday/g" /letv/cloudland/app_tmp/oozie/event-collect/job.properties

  $hdhome/bin/hdfs dfs -rm -rf -skipTrash /user/cloudland/apps/event-collect/*
  $hdhome/bin/hdfs dfs -put /letv/cloudland/app_tmp/oozie/event-collect/* /user/cloudland/apps/event-collect/


  echo "==== ==== ====[$time]: job[event-collect] running. ==== ==== ==== "

  oozie job -run -config /letv/cloudland/app_tmp/oozie/event-collect/job.properties -oozie http://centos10-13.letv.cn:11000/oozie

  echo "==== ==== ====[$time]: job[event-collect] done. ==== ==== ==== "

done
