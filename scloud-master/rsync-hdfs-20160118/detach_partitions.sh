#!/bin/bash

current=$(date +%Y%m%d)
rootdir="/letv/cloudland/app_jobs/detach-partition"

log_info="----info: $(date +'%Y-%m-%d %H:%M:%S') "
log_warring="----warring: $(date +'%Y-%m-%d %H:%M:%S') "
log_error="----error: $(date +'%Y-%m-%d %H:%M:%S') "

# read a file and append it to an array line by line.
getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
		array+=( "$line" ) # Append line to the array
    done < "$1"
}

getPresent() {
	presetn_list=$1
	$(date +'%Y-%m-%d %H:%M:%S')
	if test -e ${presetn_list}; then
		echo "${log_info} file [${presetn_list}] is exists."
	else
		echo "${log_warring} file [${presetn_list}] not exists, now created it."
		touch ${presetn_list}
	fi
}


doUpdate() {
	schem=$1		# schema name.
	tables=$2		# all tables of the schema.
	presents=$3		# all tables of the schema which partition is exist in hive.

	getArray "$2"
	tables=("${array[@]}")

	getArray "$3"
	presents=("${array[@]}")

	echo "---- Tables: " ${tables[@]}

	for present in ${presents[@]}
	do
		tables=(${tables[@]/$present/})
    	echo "$log_info table [$present] partition is exists, skipped it now."	
	done
}

getArray "${rootdir}/schemas-list.txt"

schemas=("${array[@]}")
echo "---- Schemas is: [" ${schemas[@]} "]"

for schema in schemas
do
	tb_file="${rootdir}/${schema}-tables-list.txt"
	presetn_list="${rootdir}/${schema}-present-${current}.txt"

	if test -e ${tb_file}; then
		echo "${log_info} file [${tb_file}] is exists."
		echo "${log_info} reading to upload [${schema}] HDFS files."


	else		
		"${log_error} file [${tb_file}] not exists, will  skipped it." >> ${rootdir}/error-${current}.log	
	fi

done



getArray "${rootdir}/dwd-tables-list.txt"

dwd_tables=("${array[@]}")

echo "---- dwd tables: [" ${dwd_tables[@]} "]"