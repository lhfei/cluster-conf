#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/hosts-fqdn-list.txt`

do

  echo 'IP is: '$ip

  rsync -avz /etc/services_hosts_allow root@$ip:/etc/services_hosts_allow
done

