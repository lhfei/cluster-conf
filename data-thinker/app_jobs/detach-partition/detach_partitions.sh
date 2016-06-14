#!/bin/bash

# read a file and append it to an array line by line.
getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
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
        echo "---- Presents: " ${presents[@]}

	for present in ${presents[@]}
	do
            echo "==== [$present] ===="
	    ${tables[@]/$present/}
    	#echo "---- Tables: " ${tables[@]}
	done
        echo "---- Tables: " ${tables[@]}
}
rootdir="/letv/cloudland/app_jobs/detach-partition"

getArray "${rootdir}/schemas-list.txt"

schemas=("${array[@]}")
#echo "---- Schemas is: [" ${schemas[@]} "]"


getArray "${rootdir}/dwd-tables-list.txt"

dwd_tables=("${array[@]}")

#echo "---- dwd tables: [" ${dwd_tables[@]} "]"


doUpdate "dwd" "$rootdir/dwd-tables-list.txt" "$rootdir/dwd-present-20151224.txt"

