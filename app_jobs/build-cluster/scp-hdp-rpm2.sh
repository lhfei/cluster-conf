#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/hosts-fqdn-6.txt`

do

  echo 'IP is: '$ip

  ssh $ip 'mkdir -p /data/slot0/cloudland'
  ssh $ip 'chown -R cloudland:cloudland /data/slot0/cloudland'

  rsync -avz /data/slot0/cloudland/  $ip:/data/slot0/cloudland

done

