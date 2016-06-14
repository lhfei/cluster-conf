#!/bin/bash

#################################################################
# Rsync HDFS files:
# 	#from hftp://10.149.10.99:50070/user/hive/warehouse/ 
#	#to /user/cloudland/warehouse/phone/datamarts/
#
# @param schema: the scheam which will be rsync hdfs files.
# @param start:	start range
# @param end: end rage
#
# @since Jan 19, 2016
# @author Hefei Li
#################################################################

#schema name
#schema="dwd"
hdfs_url="hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020"
uhome="/user/cloudland/warehouse"
hname="/usr/hdp/2.3.2.0-2950/hadoop"
tables_list_path="/letv/cloudland/app_jobs/tables-list"
origin="hftp://10.149.10.99:50070/user/hive/warehouse"

# check parameters: 
if (("$#" != 3))
then
  echo "$(date) error: Schema and start, end range must be assigned. And the start must be less then the end."
  echo "Usage: ./dwd_rsync.sh dwd 1 1"
  exit 1
fi

schema=$1
start=$2
end=$3

getArray() {
  local i=0
  array=() # Clear array
  while IFS= read -r line # Read a line
  do
    array+=( "$line" ) # Append line to the array
  done < "$1"
}

echo "====$(date) Range is [${start}, ${end}] ===="

for ((i=${start}; i<=${end}; i++))
do
  current=$(date +%Y%m%d -d -${i}day)
    echo "=====$(date) current is [${current}] ===="
  #rsync schema's hdfs files.
  getArray "${tables_list_path}/${schema}/${schema}-tables-list.txt"
  for tname in "${array[@]}"
  do
    echo "=====$(date) [${schema}.$tname] start loading ..."
    ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/${tname}/dt=${current}/ $uhome/phone/datamarts/${schema}.db/${tname}/dt=${current}/
    echo "=====$(date) [${schema}.$tname] loaded done ..."

    # load data into hive
    echo "=====$(date) [${schema}.$tname] partition ${current} data start loading  ..."
    hql="LOAD DATA INPATH '${hdfs_url}/${uhome}/phone/datamarts/${schema}.db/${tname}/dt=${current}/*' INTO TABLE ${schema}.${tname} PARTITION (dt=${current});"
    echo $hql
    hive -e "$hql"
    echo "=====$(date) [${schema}.$tname] partition ${current} data loaded  ..." 
  done
done

