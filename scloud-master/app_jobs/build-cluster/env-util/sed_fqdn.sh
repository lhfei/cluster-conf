#!/bin/bash

fqdn_pre="basic.internal.hadoop."
fqdn_post=".scloud.letv.com"

for ip in  `cat ../ip-list-cloud.txt`

do
    echo 'IP is: '$ip
    fqdn_ip=${ip//./-}
    fqdn=${fqdn_pre}${fqdn_ip}${fqdn_post}

    post_ip=${ip/10.148.10./}
    old_fqdn="centos10-"${post_ip}".letv.cn"
    
    echo "Post IP: " ${post_ip}
    echo "Old FQDN is: ${old_fqdn}"

    echo "FQDN-IP is: ${fqdn_ip}"
    echo "FQDN is: ${fqdn}"

    #rsync -avz /etc/profile root@${ip}:/etc/profile

    sed -i s/${old_fqdn}/${fqdn}/g  /letv/cloudland/app_jobs/build-cluster/env-util/ambari-server-66.sql
   
done
