#!/bin/bash

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}


getArray './dmr-tables-list.txt'

for tname in "${array[@]}"
do
    echo "===== [$tname] start loading ..."

    hive -e "SHOW CREATE TABLE dwr.${tname}"  >>  /home/kanghua/dmr_ddl.sql

done