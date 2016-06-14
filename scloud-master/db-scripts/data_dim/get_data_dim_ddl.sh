#!/bin/bash

schema="data_dim"

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
    echo "===== [$tname] start loading ..."

    hive -e "SHOW CREATE TABLE ${schema}.${tname}" >>  ./${schema}_ddl.sql
    echo ";" >> ./${schema}_ddl.sql
done
