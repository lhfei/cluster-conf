#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/cluster-hosts.txt`

do

  echo 'IP is: '$ip

  ssh $ip 'ambari-agent stop'

done

