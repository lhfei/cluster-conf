#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/hosts-fqdn-list.txt`

do

  echo 'IP is: '$ip

  ssh $ip 'mkdir -p /data/slotb/log/accumulo'
  ssh $ip 'mkdir -p /data/slotb/log/ambari-metrics-collector'

  ssh $ip 'chmod 777 /data/slotb/log/'
  ssh $ip 'chmod 777 /data/slotb/log/accumulo'
  ssh $ip 'chmod 777 /data/slotb/log/ambari-metrics-collector'

done

