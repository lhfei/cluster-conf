#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/build-cluster/ip-list-cloud.txt`

do

  echo 'IP is: '$ip

  rsync -avz /etc/hosts root@$ip:/etc/hosts

done

