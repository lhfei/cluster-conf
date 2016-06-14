#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/build-cluster/ip-list-cloud.txt`

do

    echo 'IP is: '$ip

      ssh $ip 'ambari-agent stop' &

    done


