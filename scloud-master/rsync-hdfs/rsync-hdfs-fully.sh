#!/bin/bash

uhome=/user/cloudland/warehouse
hname=/usr/hdp/2.3.2.0-2950/hadoop
tables_list_path=hname/letv/cloudland/app_jobs/rsync-hdfs
origin=hftp://10.149.10.99:50070/user/hive/warehouse

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}


#rsync schema dwd of data
getArray '/letv/cloudland/app_jobs/rsync-hdfs/dwd-init/dwd-tables-list-dt.txt'
for tname in "${array[@]}"
do
    for i in {1..1}
    do
      current=$(date +%Y%m%d -d -${i}day)
      echo "===== [$tname/dt=$current] start loading ..."
      ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/dwd.db/${tname}/dt=${current}/  $uhome/phone/datamarts/dwd.db/${tname}/dt=${current}/
    done
done

#rsync schema dmr of data
getArray '/letv/cloudland/app_jobs/rsync-hdfs/dmr-init/dmr-tables-list.txt'
for tname in "${array[@]}"
do
    for i in {1..1}
    do
      current=$(date +%Y%m%d -d -${i}day)
      echo "===== [$tname/dt=$current] start loading ..."
      #${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/dmr.db/${tname}/dt=${current}/  $uhome/phone/datamarts/dmr.db/${tname}/dt=${current}/
    done
done

#rsync schema tv_report of data
getArray '/letv/cloudland/app_jobs/rsync-hdfs/tv_report-init/tv_report-tables-list.txt'
for tname in "${array[@]}"
do
    for i in {1..1}
    do
      current=$(date +%Y%m%d -d -${i}day)
      echo "===== [$tname/dt=$current] start loading ..."
      #${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/tv_report.db/${tname}/dt=${current}/  $uhome/tv/datamarts/tv_report.db/${tname}/dt=${current}/
    done    
done

${hname}/bin/hdfs dfs -rm -r -skipTrash $uhome/phone/datamarts/dwd.db/*/dt=*/*_copy_*
${hname}/bin/hdfs dfs -rm -r -skipTrash $uhome/phone/datamarts/dmr.db/*/dt=*/*_copy_*
${hname}/bin/hdfs dfs -rm -r -skipTrash $uhome/tv/datamarts/tv_report.db/*/dt=*/*_copy_*
