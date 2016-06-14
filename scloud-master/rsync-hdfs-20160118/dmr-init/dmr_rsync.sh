#!/bin/bash


hadoop_prefix=/usr/hdp/2.3.2.0-2950/hadoop
tables_list_path=/letv/cloudland/app_jobs/rsync_hdfs_file

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}

getArray '/letv/cloudland/app_jobs/rsync_hdfs_file/dmr-init/dmr-tables-list.txt'

for i in {1..1}
do
  current=$(date +%Y%m%d -d -${i}day)
  echo "-------------------------------- Date[${current}] ----------------------------------"
  #rsync schema dmr of data  
  for tname in "${array[@]}"
  do
    echo "===== [$tname] start loading ..."
    ${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/dmr.db/${tname}/dt=${current}  /user/cloudland/phone/v_newer/dmr.db/${tname}/dt=${current}/
  done
done
