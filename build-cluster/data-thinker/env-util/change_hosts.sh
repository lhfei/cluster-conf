#!/bin/bash

fqdn_pre="basic.internal.hadoop."
fqdn_post=".scloud.letv.com"

for ip in  `cat ../ip-list-cloud.txt`

do
    echo 'IP is: '$ip
    fqdn_ip=${ip//./-}
    fqdn=${fqdn_pre}${fqdn_ip}${fqdn_post}
    hostname="HOSTNAME=${fqdn}"
    echo "FQDN-IP is: ${fqdn_ip}"
    echo "FQDN is: ${fqdn}"
    echo "HOSTNAME is: ${hostname}"

    #rsync -avz /etc/profile root@${ip}:/etc/profile
    ssh $ip "sed -i s/^${ip}.*/${hostname}/g /etc/sysconfig/network"
    ssh $ip "hostname ${fqdn}"
   
done
