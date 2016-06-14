#!/bin/bash

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}


# check parameters: 
if (("$#" != 1))
then
  echo "$(date) error: Schema is required."
  echo "Usage: ./<schema>"
  exit 1
fi

schema=$1

getArray "./${schema}-tables-list.txt"

for tname in "${array[@]}"
do
    echo "===== [$tname] start loading ..."

    hive -e "SHOW CREATE TABLE ${schema}.${tname}" >>  ./${schema}_ddl_create.sql
    echo ";" >> ./${schema}_ddl_create.sql
done