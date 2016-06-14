#!/bin/bash

schema="tv_report";

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
		array+=( "$line" ) # Append line to the array
    done < "$1"
}

getArray "./${schema}-tables-list.txt"

for tname in "${array[@]}"
do
    echo "===== [${schema}.$tname] start loading ..."

    tname=${tname// /}

    echo "===== [${schema}.$tname] start loading ..."

    hive -e "SHOW CREATE TABLE ${schema}.${tname}" >>  ./${schema}_ddl_create.sql
    echo ";" >> ./${schema}_ddl_create.sql
done