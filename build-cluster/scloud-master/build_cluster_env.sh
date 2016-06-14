#!/bin/bash

for ip in  `cat /letv/cloudland/app_jobs/hosts-fqdn-4.txt`

do

  echo 'IP is: '$ip

  ssh $ip 'mkdir -p /usr/local/cloud /letv/cloudland'
  ssh $ip 'chown -R cloudland:cloudland /usr/local/cloud'
  ssh $ip 'chown -R cloudland:cloudland /letv/cloudland'

  rsync -avz /letv/cloudland/  $ip:/letv/cloudland
  rsync -avz /usr/local/cloud/ $ip:/usr/local/cloud
  rsync -avz /etc/profile $ip:/etc/profile

  ssh $ip 'source /etc/profile'

done

