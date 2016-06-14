#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/build-cluster/hosts-fqdn-fully.txt`

do

  echo 'IP is: '$ip

  ssh $ip 

done

