#!/bin/bash

fqdn_pre="basic.internal.hadoop."
fqdn_post=".scloud.letv.com"

for ip in  `cat ../ip-list-cloud.txt`

do
  ssh $ip "rpm -e --nodeps java-1.8.0-openjdk-headless-1.8.0.65-0.b17.el6_7.x86_64"
  ssh $ip "rpm -e --nodeps java-1.5.0-gcj-1.5.0.0-29.1.el6.x86_64"
  ssh $ip "source /etc/profile"

done
