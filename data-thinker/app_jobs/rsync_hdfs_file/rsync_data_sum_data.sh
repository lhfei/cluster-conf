#!/bin/bash


hadoop_prefix=/usr/hdp/2.3.2.0-2950/hadoop
current=$(date +%Y%m%d -d -1day)
tables_list_path=/letv/cloudland/app_jobs/rsync_hdfs_file

getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}


#rsync schema dwd of data
getArray '/letv/cloudland/app_jobs/rsync_hdfs_file/dwd-init/dwd-tables-list.txt'
for tname in "${array[@]}"
do
    echo "===== [dwd.$tname] start loading ..."
    ${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/dwd.db/${tname}/dt=${current}  /user/cloudland/phone/v_newer/dwd.db/${tname}/dt=${current}/
done


#rsync schema tv_report of data
getArray '/letv/cloudland/app_jobs/rsync_hdfs_file/tv_report-init/tv_report-tables-list.txt'
for tname in "${array[@]}"
do
    echo "===== [tv_report.$tname] start loading ..."
    ${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/tv_report.db/${tname}/dt=${current}  /user/cloudland/tv/v_newer/tv_report.db/${tname}/dt=${current}/
done


#rsync schema dmr of data
getArray '/letv/cloudland/app_jobs/rsync_hdfs_file/dmr-init/dmr-tables-list.txt'
for tname in "${array[@]}"
do
    echo "===== [dmr.$tname] start loading ..."
    ${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/dmr.db/${tname}/dt=${current}  /user/cloudland/phone/v_newer/dmr.db/${tname}/dt=${current}/
done

#rsync schema source of data
getArray '/letv/cloudland/app_jobs/rsync_hdfs_file/source-init/source-tables-list.txt'
for tname in "${array[@]}"
do
    echo "===== [source.$tname] start loading ..."
    ${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/source.db/${tname}/dt=${current}  /user/cloudland/phone/v_newer/source.db/${tname}/dt=${current}/
done

#rsync schema data_dim of data
getArray '/letv/cloudland/app_jobs/rsync_hdfs_file/data_dim-init/source-tables-list.txt'
for tname in "${array[@]}"
do
    echo "===== [data_dim.$tname] start loading ..."
    ${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_dim.db/${tname}/dt=${current}  /user/cloudland/phone/v_newer/data_dim.db/${tname}/dt=${current}/
done

# rsync schema data_sum of data
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_phone_source_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_phone_source_day/dt=${current}/		
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_phone_tags_user_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_phone_tags_user_day/dt=${current}/        
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_app_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_day/dt=${current}/          
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_app_imei_his_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_imei_his_day/dt=${current}/  
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_app_usage_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_usage_day/dt=${current}/    
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_app_user_his_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_user_his_day/dt=${current}/ 
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_beat_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_beat_day/dt=${current}/          
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_env_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_env_day/dt=${current}/           
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_event_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_event_day/dt=${current}/         
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_imei_his_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_imei_his_day/dt=${current}/	    
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_user_his_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_user_his_day/dt=${current}/      
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_event_props_open_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_event_props_open_day/dt=${current}/
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_music_play_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_music_play_day/dt=${current}/      
#${hadoop_prefix}/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_video_play_day/dt=${current} /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_video_play_day/dt=${current}/

${hadoop_prefix}/bin/hdfs dfs -rm -r -skipTrash /user/cloudland/phone/v_newer/dwd.db/*/dt=*/*_copy_*
${hadoop_prefix}/bin/hdfs dfs -rm -r -skipTrash /user/cloudland/phone/v_newer/tv_report-init.db/*/dt=*/*_copy_*
${hadoop_prefix}/bin/hdfs dfs -rm -r -skipTrash /user/cloudland/phone/v_newer/dmr.db/*/dt=*/*_copy_*
${hadoop_prefix}/bin/hdfs dfs -rm -r -skipTrash /user/cloudland/phone/v_newer/source.db/*/dt=*/*_copy_*
${hadoop_prefix}/bin/hdfs dfs -rm -r -skipTrash /user/cloudland/phone/v_newer/data_dim.db/*/dt=*/*_copy_*
${hadoop_prefix}/bin/hdfs dfs -rm -r -skipTrash /user/cloudland/phone/v_newer/data_sum.db/*/dt=*/*_copy_*

