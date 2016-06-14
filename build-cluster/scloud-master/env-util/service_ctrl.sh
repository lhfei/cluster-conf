#!/bin/bash

fqdn_pre="basic.internal.hadoop."
fqdn_post=".scloud.letv.com"

for ip in  `cat ../ip-list-cloud.txt`

do

    #rsync -avz /etc/profile root@${ip}:/etc/profile

    ssh $ip ""

    ssh $ip ""
   
done
