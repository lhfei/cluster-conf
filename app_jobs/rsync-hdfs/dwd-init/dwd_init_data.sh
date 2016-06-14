#!/bin/bash

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}

getArray '/letv/cloudland/app_jobs/rsync-hdfs/dwd-init/dwd-tables-list.txt'

for tname in "${array[@]}"
do
    echo "===== [$tname] start loading ..."

    for d in {1..1}
    do
        current=$(date +%Y%m%d -d -${d}day)

        echo "=====++++++++ [$tname] partition ${current} data start loading  ..."
        hql="LOAD DATA INPATH 'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020//user/cloudland/warehouse/phone/datamarts/dwd.db/${tname}/dt=${current}/*' INTO TABLE dwd.${tname} PARTITION (dt=${current});"
        echo $hql
        hive -e "$hql"
        echo "=====++++++++ [$tname] partition ${current} data loaded  ..."
    done
done
