#!/bin/bash

cd $HADOOP_HOME

current=$(date +%Y%m%d -d -${i}day)

#rsync schema tv_report of data
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/tv_report.db/  /user/cloudland/tv/v_newer/tv_report.db

# rsync schema data_sum of data
/usr/hdp/2.3.2.0-2950/hadoop/bin/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_phone_source_day/				   /user/cloudland/phone/v_newer/data_sum.db/sum_phone_source_day		
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_phone_tags_user_day/        	   /user/cloudland/phone/v_newer/data_sum.db/sum_phone_tags_user_day         
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_app_day/           	   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_day           
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_app_imei_his_day/  	   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_imei_his_day  
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_app_usage_day/     	   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_usage_day     
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_app_user_his_day/  	   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_user_his_day  
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_beat_day/          	   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_beat_day          
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_env_day/         	   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_env_day           
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_event_day/         	   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_event_day         
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_imei_his_day/		   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_imei_his_day	    
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_user_his_day/     	   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_user_his_day      
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_event_props_open_day/  /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_event_props_open_day
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_music_play_day/		   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_music_play_day      
/usr/hdp/2.3.2.0-2950/hadoop/bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/data_sum.db/sum_sdk_phone_video_play_day/	  	   /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_video_play_day


/usr/hdp/2.3.2.0-2950/hadoop/bin/hdfs dfs -rm -r -skipTrash /user/cloudland/phone/v_newer/data_sum.db/*/dt=*/*_copy_*
     
