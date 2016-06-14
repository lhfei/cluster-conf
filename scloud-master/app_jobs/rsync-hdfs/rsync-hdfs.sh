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

for i in {1..1}
do
	current=$(date +%Y%m%d -d -${i}day)
	#rsync schema dwd of data
	getArray "${tables_list_path}/dwd-init/dwd-tables-list.txt"
	for tname in "${array[@]}"
	do
	    echo "===== [dwd.$tname] start loading ..."
	    ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/dwd.db/${tname}/dt=${current}/ $uhome/phone/datamarts/dwd.db/${tname}/dt=${current}/
	done

	#rsync schema dmr of data
	getArray "${tables_list_path}/dmr-init/dmr-tables-list.txt"
	for tname in "${array[@]}"
	do
	    echo "===== [dmr.$tname] start loading ..."
	    ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/dmr.db/${tname}/dt=${current}/  $uhome/phone/datamarts/dmr.db/${tname}/dt=${current}/
	done

	#rsync schema tv_report of data
	#getArray "${tables_list_path}/tv_report-init/tv_report-tables-list.txt"
	#for tname in "${array[@]}"
	#do
	    #echo "===== [tv_report.$tname] start loading ..."
	    #${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/tv_report.db/${tname}/dt=${current}/  $uhome/tv/datamarts/tv_report.db/${tname}/dt=${current}/
	#done

        #rsync schema source of data
        getArray "${tables_list_path}/source-init/source-tables-list.txt"
        for tname in "${array[@]}"
        do
            echo "===== [source.$tname] start loading ..."
            ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/source.db/${tname}/dt=${current}/  $uhome/phone/datamarts/source.db/${tname}/dt=${current}/
        done

        #rsync schema data_dim of data
        getArray "${tables_list_path}/data_dim-init/data_dim-tables-list.txt"
        for tname in "${array[@]}"
        do
            echo "===== [data_dim.$tname] start loading ..."
            ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/data_dim.db/${tname}/dt=${current}/  $uhome/phone/datamarts/data_dim.db/${tname}/dt=${current}/
        done

done
