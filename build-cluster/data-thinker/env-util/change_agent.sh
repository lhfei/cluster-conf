#!/bin/bash

fqdn_pre="basic.internal.hadoop."
fqdn_post=".scloud.letv.com"

for ip in  `cat ../ip-list-cloud.txt`

do
    echo 'IP is: '$ip
    fqdn_ip=${ip//./-}
    fqdn=${fqdn_pre}${fqdn_ip}${fqdn_post}
    hostname="hostname=basic.internal.hadoop.10-148-10-80.scloud.letv.com"
    echo "FQDN-IP is: ${fqdn_ip}"
    echo "FQDN is: ${fqdn}"
    echo "HOSTNAME is: ${hostname}"

    #rsync -avz /etc/profile root@${ip}:/etc/profile

    ssh $ip "cp /etc/ambari-agent/conf/ambari-agent.ini /etc/ambari-agent/conf/ambari-agent.ini-li.bak"

    ssh $ip "sed -i s/^hostname=.*/${hostname}/g /etc/ambari-agent/conf/ambari-agent.ini"
   
done
