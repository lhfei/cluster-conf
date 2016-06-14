#!/bin/bash 

###########################################
# Clean HDP suties logs.
# 
###########################################

for ip in  `cat /letv/cloudland/app_jobs/clean-logs/hosts-fqdn-cluster-80.txt`
do
  echo 'IP is: '$ip
  echo "-------- HDFS Namenodes and datanodes logs cleaned done. ----"
  ssh $ip 'rm -rf /var/log/hadoop/hdfs/*hadoop-hdfs-*.log.*'
  ssh $ip 'rm -rf /var/log/hadoop/hdfs/*hadoop-hdfs-*.out.*'

  echo "-------- YARN logs cleaned done. ----"
  ssh $ip 'rm -rf /var/log/hadoop-yarn/yarn/yarn-yarn-*.out.*'

  echo "-------- Strom logs cleaned done. ----"
  ssh $ip 'rm -rf /var/log/storm/supervisor.log.*'
  ssh $ip 'rm -rf /var/log/storm/*.log.*'.gz

  echo "-------- Flume logs cleaned done. ----"
  ssh $ip 'rm -rf /var/log/flume/*.log.*'
done
