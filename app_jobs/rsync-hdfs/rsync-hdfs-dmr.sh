#!/bin/bash

###############################################################
# Rsync HDFS files:
# 	@from hftp://10.149.10.99:50070/user/hive/warehouse/ 
#	@to /user/cloudland/warehouse/phone/datamarts
#
# @author Hefei Li
# @since Dec 23, 2015
###############################################################

uhome="/user/cloudland/warehouse"
hname="/usr/hdp/2.3.2.0-2950/hadoop"
tables_list_path="/letv/cloudland/app_jobs/rsync-hdfs"
origin="hftp://10.149.10.99:50070/user/hive/warehouse"

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}

for i in {1..10}
do
	current=$(date +%Y%m%d -d -${i}day)
	#rsync schema dmr of data
	getArray "${tables_list_path}/dmr-init/dmr-tables-list.txt"
	for tname in "${array[@]}"
	do
	    echo "===== [$tname] start loading ..."
	    ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/dmr.db/${tname}/dt=${current}/  $uhome/phone/datamarts/dmr.db/${tname}/dt=${current}/
	done

done

${hname}/bin/hdfs dfs -rm -r -skipTrash $uhome/phone/datamarts/dmr.db/*/dt=*/*_copy_*
