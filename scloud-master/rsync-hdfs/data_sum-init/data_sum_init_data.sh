#!/bin/bash

#################################################################
# Rsync HDFS files:
#   #from hftp://10.149.10.99:50070/user/hive/warehouse/ 
# #to /user/cloudland/warehouse/phone/datamarts/
#
# @param schema: the scheam which will be rsync hdfs files.
# @param start: start range
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
if (("$#" != 4))
then
  echo "$(date) error: Schema and start, end range must be assigned. And the start must be less then the end."
  echo "Usage: ./[schema]_init_data.sh <phone|tv> 1 1"
  exit 1
fi

schema=$1
phone_or_tv=$2
start=$3
end=$4

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
    # load data into hive
    echo "=====$(date) [${schema}.$tname] partition ${current} data start loading  ..."
    hql="LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/${tname}/dt=${current}/*' INTO TABLE ${schema}.${tname} PARTITION (dt=${current});"
    echo $hql
    hive -e "$hql"
    echo "=====$(date) [${schema}.$tname] partition ${current} data loaded  ..." 
  done

  echo "=====$(date) [${schema}.sum_did_use_his] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_did_use_his/dt=${current}/pf=cloud/*' INTO TABLE ${schema}.sum_did_use_his PARTITION (dt=${current}, pf='cloud');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_did_use_his/dt=${current}/pf=h5/*'  INTO TABLE ${schema}.sum_did_use_his PARTITION (dt=${current}, pf='h5');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_did_use_his/dt=${current}/pf=mc/*'  INTO TABLE ${schema}.sum_did_use_his PARTITION (dt=${current}, pf='mc');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_did_use_his/dt=${current}/pf=ms/*'  INTO TABLE ${schema}.sum_did_use_his PARTITION (dt=${current}, pf='ms');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_did_use_his/dt=${current}/pf=pad/*'   INTO TABLE ${schema}.sum_did_use_his PARTITION (dt=${current}, pf='pad');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_did_use_his/dt=${current}/pf=pc/*'  INTO TABLE ${schema}.sum_did_use_his PARTITION (dt=${current}, pf='pc');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_did_use_his/dt=${current}/pf=tv/*'  INTO TABLE ${schema}.sum_did_use_his PARTITION (dt=${current}, pf='tv');"
  echo "=====$(date) [${schema}.sum_did_use_his] partition ${current} data loaded  ..." 

  echo "=====$(date) [${schema}.sum_sdk_phone_app_day] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_sdk_phone_app_day/dt=${current}/*' INTO TABLE ${schema}.sum_sdk_phone_app_day PARTITION (dt=${current});"
  echo "=====$(date) [${schema}.sum_sdk_phone_app_day] partition ${current} data loaded  ..." 

  echo "=====$(date) [${schema}.sum_sdk_phone_event_game_day] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_sdk_phone_event_game_day/dt=${current}/*' INTO TABLE ${schema}.sum_sdk_phone_event_game_day PARTITION (dt=${current});"
  echo "=====$(date) [${schema}.sum_sdk_phone_event_game_day] partition ${current} data loaded  ..." 

  echo "=====$(date) [${schema}.sum_sdk_phone_event_props_open_day] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_sdk_phone_event_props_open_day/dt=${current}/*' INTO TABLE ${schema}.sum_sdk_phone_event_props_open_day PARTITION (dt=${current});"
  echo "=====$(date) [${schema}.sum_sdk_phone_event_props_open_day] partition ${current} data loaded  ..." 

  echo "=====$(date) [${schema}.sum_sdk_phone_imei_his_day] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_sdk_phone_imei_his_day/dt=${current}/*' INTO TABLE ${schema}.sum_sdk_phone_imei_his_day PARTITION (dt=${current});"
  echo "=====$(date) [${schema}.sum_sdk_phone_imei_his_day] partition ${current} data loaded  ..." 

  echo "=====$(date) [${schema}.sum_user_act_day] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_act_day/dt=${current}/product=cloud/*'       INTO TABLE ${schema}.sum_user_act_day PARTITION (dt=${current}, product='cloud');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_act_day/dt=${current}/product=mh5/*'         INTO TABLE ${schema}.sum_user_act_day PARTITION (dt=${current}, product='mh5');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_act_day/dt=${current}/product=mobile_cli/*'  INTO TABLE ${schema}.sum_user_act_day PARTITION (dt=${current}, product='mobile_cli');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_act_day/dt=${current}/product=pc/*'          INTO TABLE ${schema}.sum_user_act_day PARTITION (dt=${current}, product='pc');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_act_day/dt=${current}/product=tv/*'          INTO TABLE ${schema}.sum_user_act_day PARTITION (dt=${current}, product='tv');"
  echo "=====$(date) [${schema}.sum_user_act_day] partition ${current} data loaded  ..." 

  echo "=====$(date) [${schema}.sum_user_login_env_day] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_login_env_day/dt=${current}/product=bbs/*'         INTO TABLE ${schema}.sum_user_login_env_day PARTITION (dt=${current}, product='bbs');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_login_env_day/dt=${current}/product=cloud/*'       INTO TABLE ${schema}.sum_user_login_env_day PARTITION (dt=${current}, product='cloud');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_login_env_day/dt=${current}/product=lecloud/*'     INTO TABLE ${schema}.sum_user_login_env_day PARTITION (dt=${current}, product='lecloud');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_login_env_day/dt=${current}/product=mh5/*'         INTO TABLE ${schema}.sum_user_login_env_day PARTITION (dt=${current}, product='mh5');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_login_env_day/dt=${current}/product=mobile_cli/*'  INTO TABLE ${schema}.sum_user_login_env_day PARTITION (dt=${current}, product='mobile_cli');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_login_env_day/dt=${current}/product=pc/*'          INTO TABLE ${schema}.sum_user_login_env_day PARTITION (dt=${current}, product='pc');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_login_env_day/dt=${current}/product=shop/*'        INTO TABLE ${schema}.sum_user_login_env_day PARTITION (dt=${current}, product='shop');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_login_env_day/dt=${current}/product=srch/*'        INTO TABLE ${schema}.sum_user_login_env_day PARTITION (dt=${current}, product='srch');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_login_env_day/dt=${current}/product=tv/*'          INTO TABLE ${schema}.sum_user_login_env_day PARTITION (dt=${current}, product='tv');"
  echo "=====$(date) [${schema}.sum_user_login_env_day] partition ${current} data loaded  ..." 

  echo "=====$(date) [${schema}.sum_user_play_summary_day] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_play_summary_day/dt=${current}/product=cloud/*'         INTO TABLE ${schema}.sum_user_play_summary_day PARTITION (dt=${current}, product='cloud');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_play_summary_day/dt=${current}/product=mh5/*'      INTO TABLE ${schema}.sum_user_play_summary_day PARTITION (dt=${current}, product='mh5');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_play_summary_day/dt=${current}/product=mobile_cli/*' INTO TABLE ${schema}.sum_user_play_summary_day PARTITION (dt=${current}, product='mobile_cli');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_play_summary_day/dt=${current}/product=pc/*'          INTO TABLE ${schema}.sum_user_play_summary_day PARTITION (dt=${current}, product='pc');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_play_summary_day/dt=${current}/product=tv/*'          INTO TABLE ${schema}.sum_user_play_summary_day PARTITION (dt=${current}, product='tv');"
  echo "=====$(date) [${schema}.sum_user_play_summary_day] partition ${current} data loaded  ..." 

  echo "=====$(date) [${schema}.sum_user_pv_day] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_pv_day/dt=${current}/product=bbs/*'         INTO TABLE ${schema}.sum_user_pv_day PARTITION (dt=${current}, product='bbs');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_pv_day/dt=${current}/product=cloud/*'       INTO TABLE ${schema}.sum_user_pv_day PARTITION (dt=${current}, product='cloud');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_pv_day/dt=${current}/product=mh5/*'         INTO TABLE ${schema}.sum_user_pv_day PARTITION (dt=${current}, product='mh5');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_pv_day/dt=${current}/product=pc/*'          INTO TABLE ${schema}.sum_user_pv_day PARTITION (dt=${current}, product='pc');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_pv_day/dt=${current}/product=shop/*'        INTO TABLE ${schema}.sum_user_pv_day PARTITION (dt=${current}, product='shop');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_pv_day/dt=${current}/product=srch/*'        INTO TABLE ${schema}.sum_user_pv_day PARTITION (dt=${current}, product='srch');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_pv_day/dt=${current}/product=tv/*'          INTO TABLE ${schema}.sum_user_pv_day PARTITION (dt=${current}, product='tv');"
  echo "=====$(date) [${schema}.sum_user_pv_day] partition ${current} data loaded  ..." 


  echo "=====$(date) [${schema}.sum_user_query_day] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_query_day/dt=${current}/product=cloud/*'       INTO TABLE ${schema}.sum_user_query_day PARTITION (dt=${current}, product='cloud');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_query_day/dt=${current}/product=mh5/*'         INTO TABLE ${schema}.sum_user_query_day PARTITION (dt=${current}, product='mh5');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_query_day/dt=${current}/product=mobile_cli/*'  INTO TABLE ${schema}.sum_user_query_day PARTITION (dt=${current}, product='mobile_cli');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_query_day/dt=${current}/product=pc/*'          INTO TABLE ${schema}.sum_user_query_day PARTITION (dt=${current}, product='pc');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_query_day/dt=${current}/product=srch/*'        INTO TABLE ${schema}.sum_user_query_day PARTITION (dt=${current}, product='srch');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_query_day/dt=${current}/product=tv/*'          INTO TABLE ${schema}.sum_user_query_day PARTITION (dt=${current}, product='tv');"
  echo "=====$(date) [${schema}.sum_user_query_day] partition ${current} data loaded  ..." 
  
  echo "=====$(date) [${schema}.sum_user_uuid_play_day] partition ${current} data start loading  ..."
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_uuid_play_day/dt=${current}/product=cloud/*'       INTO TABLE ${schema}.sum_user_uuid_play_day PARTITION (dt=${current}, product='cloud');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_uuid_play_day/dt=${current}/product=mh5/*'         INTO TABLE ${schema}.sum_user_uuid_play_day PARTITION (dt=${current}, product='mh5');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_uuid_play_day/dt=${current}/product=mobile_cli/*'  INTO TABLE ${schema}.sum_user_uuid_play_day PARTITION (dt=${current}, product='mobile_cli');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_uuid_play_day/dt=${current}/product=pc/*'          INTO TABLE ${schema}.sum_user_uuid_play_day PARTITION (dt=${current}, product='pc');"
  hive -e "LOAD DATA INPATH '${hdfs_url}/${uhome}/${phone_or_tv}/datamarts/${schema}.db/sum_user_uuid_play_day/dt=${current}/product=tv/*'          INTO TABLE ${schema}.sum_user_uuid_play_day PARTITION (dt=${current}, product='tv');"
  echo "=====$(date) [${schema}.sum_user_uuid_play_day] partition ${current} data loaded  ..." 

done

