#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/hosts-70-list.txt`

do

  echo 'IP is: '$ip
  ssh-copy-id -i /home/cloudland/.ssh/id_dsa.pub $ip

done

