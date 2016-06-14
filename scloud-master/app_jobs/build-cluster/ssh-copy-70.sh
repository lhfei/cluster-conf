#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/hosts-fqdn-2.txt`

do

  echo 'IP is: '$ip
  ssh-copy-id -i /root/.ssh/id_dsa.pub $ip

done

