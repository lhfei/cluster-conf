# read a file and append it to an array line by line.
getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}

current=$(date +%Y%m%d)
schemas=[""]
db_name="dwd"
table_name="dwd_flow_sdk_phone_event_day"

dt_file="/letv/cloudland/app_jobs/detatch-partition/${db_name}-${current}-present.txt"

if test -e ${dt_file}; then
	echo "file [${dt_file}] is exists."
else
	echo "file [${dt_file}] not exists, now created it."
	touch ${dt_file}
fi

getArray "${dt_file}"

#partitions=$(hive -e "USE dwd; SHOW PARTITIONS dwd_flow_sdk_phone_event_day")

# before we query for information we may want to make sure we have all the partitions loaded?
# in this case the table was external so there may be partitions that were not loaded 
# when the table was created
# Here is an example of executing two commands with hive in a bash shell
#partitions=$(hive -e "USE $database; SHOW PARTITIONS $table")

# loop through all the partitions and load if not present 
# in most case this is not needed.
partitions=$(hive -e "USE ${db_name}; SHOW PARTITIONS ${dwd_flow_sdk_phone_event_day};")

echo "partitions size is: ${#partitions[@]}"

yesterday="20151221"

for partition in $partitions
do
  echo "==="$partition"==="
  if [ "dt="$yesterday == $partition ]; then
  	# partition is present
    echo "$yesterday is exist in partition."
    echo "---- start load data from here. ----"

  else
    echo "Not exist."
  fi
done
  
