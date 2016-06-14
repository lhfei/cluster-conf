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
phone_origin="hftp://centos10-80.letv.cn:50070/user/cloudland/warehouse/phone/datamarts/"
tv_origin="hftp://centos10-80.letv.cn:50070/user/cloudland/warehouse/tv/datamarts/"

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}

for i in {2..8}
do
	current=$(date +%Y%m%d -d -${i}day)
	#rsync schema dwd of data
	getArray "${tables_list_path}/dwd-init/dwd-tables-list.txt"
	for tname in "${array[@]}"
	do
	    echo "===== [$tname] start loading ..."
	    ${hname}/bin/hadoop distcp -update -skipcrccheck ${phone_origin}/dwd.db/${tname}/dt=${current}/ $uhome/phone/datamarts/dwd.db/${tname}/dt=${current}/
	done

	#rsync schema dmr of data
	getArray "${tables_list_path}/dmr-init/dmr-tables-list.txt"
	for tname in "${array[@]}"
	do
	    echo "===== [$tname] start loading ..."
	    ${hname}/bin/hadoop distcp -update -skipcrccheck ${phone_origin}/dmr.db/${tname}/dt=${current}/  $uhome/phone/datamarts/dmr.db/${tname}/dt=${current}/
	done

	#rsync schema tv_report of data
	getArray "${tables_list_path}/tv_report-init/tv_report-tables-list.txt"
	for tname in "${array[@]}"
	do
	    echo "===== [$tname] start loading ..."
	    ${hname}/bin/hadoop distcp -update -skipcrccheck ${tv_origin}/tv_report.db/${tname}/dt=${current}/  $uhome/tv/datamarts/tv_report.db/${tname}/dt=${current}/
	done
done


${hname}/bin/hdfs dfs -rm -r -skipTrash $uhome/phone/datamarts/dwd.db/*/dt=*/*_copy_*
${hname}/bin/hdfs dfs -rm -r -skipTrash $uhome/phone/datamarts/dmr.db/*/dt=*/*_copy_*
${hname}/bin/hdfs dfs -rm -r -skipTrash $uhome/tv/datamarts/tv_report.db/*/dt=*/*_copy_*