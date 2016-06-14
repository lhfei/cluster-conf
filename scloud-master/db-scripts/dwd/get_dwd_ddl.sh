#!/bin/bash

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}


getArray './dwd-tables-list.txt'

for tname in "${array[@]}"
do
    echo "===== [$tname] start loading ..."

    hive -e "SHOW CREATE TABLE dwd.${tname}" >>  /home/kanghua/dwd_ddl.sql
    echo ";" >> /home/kanghua/dwd_ddl.sql
done