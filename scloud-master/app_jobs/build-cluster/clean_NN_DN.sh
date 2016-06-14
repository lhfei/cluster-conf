#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/hosts-fqdn-1.txt`

do

  echo 'IP is: '$ip

ssh $ip 'rm -rf /letv/hadoop/hdfs/*'
ssh $ip 'rm -rf /var/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slot0/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slot1/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slot2/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slot3/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slot4/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slot5/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slot6/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slot7/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slot8/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slot9/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slota/hadoop/hdfs/*'
ssh $ip 'rm -rf /data/slotb/hadoop/hdfs/*'

done

