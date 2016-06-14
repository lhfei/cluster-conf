#!/bin/bash 

partitions=$(hive -e "USE dwd; SHOW PARTITIONS dwd_flow_sdk_phone_event_day;")

echo "partitions size is: ${#partitions[@]}"

current="20151221"
for partition in $partitions
do
  echo "==="$partition"==="
  if [ "dt="$current == $partition ]; then
  
    echo "$current is exist in partition."
    echo "---- start load data from here. ----"

  else
    echo "Not exist."
  fi
done
