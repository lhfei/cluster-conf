#!/bin/bash

###############################################################
# Rsync HDFS files:
# 	@from hftp://10.149.10.99:50070/user/hive/warehouse/ 
#	@to /user/cloudland/warehouse/phone/datamarts
#
# @author Hefei Li
# @since Dec 23, 2015
###############################################################

schema="dwd"
uhome="/user/cloudland/warehouse"
hname="/usr/hdp/2.3.2.0-2950/hadoop"
tables_list_path="/letv/cloudland/app_jobs/rsync-hdfs"
destination="hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse"
origin="hftp://10.149.10.99:50070/user/hive/warehouse"

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}

for i in {2..7}
do
	current=$(date +%Y%m%d -d -${i}day)
	#rsync schema dwd of data
	getArray "./added-${schema}-tables-list.txt"
	for tname in "${array[@]}"
	do
	    echo "===== [$tname] start loading ..."
	    ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/${tname}/dt=${current}/ $uhome/phone/datamarts/${schema}.db/${tname}/dt=${current}/
	
		echo "=====++++++++ [$tname] partition ${current} data start loading  ..."
        hql="LOAD DATA INPATH '${destination}/phone/datamarts/dwd.db/${tname}/dt=${current}/*' INTO TABLE dwd.${tname} PARTITION (dt=${current});"
        echo $hql
        hive -e "$hql"
        echo "=====++++++++ [$tname] partition ${current} data loaded  ..."
	done
done