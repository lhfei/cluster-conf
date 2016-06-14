#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/hosts-fqdn-list.txt`

do

  echo 'IP is: '$ip
  #rsync -avz /usr/local/cloud/ $ip:/usr/local/cloud
  rsync -avz /etc/profile root@${ip}:/etc/profile
  ssh $ip 'source /etc/profile'

  #rsync -avz /etc/hosts root@${ip}:/etc/hosts

done

