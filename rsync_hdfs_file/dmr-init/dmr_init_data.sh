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

for d in {1..1}
do
  current=$(date +%Y%m%d -d -${d}day)
  echo "--------------[$current]------------------------"
  #rsync schema dmr of data
  getArray '/letv/cloudland/app_jobs/rsync_hdfs_file/dmr-init/dmr-tables-list-mini.txt'
  for tname in "${array[@]}"
    do
      echo "===== [$tname] start loading ..."
      hql="LOAD DATA INPATH 'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/${tname}/dt=${current}/*' INTO TABLE dmr.${tname} PARTITION (dt=${current});"
      echo $hql
      hive -e "$hql"
  done
done
