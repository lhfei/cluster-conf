#!/bin/bash

#####################################################################################
# Make directories form data_sum schema hive hdfs locations.
#####################################################################################

cd $HADOOP_HOME


bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_phone_source_day		
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_phone_tags_user_day           
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_day             
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_imei_his_day    
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_usage_day       
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_user_his_day    
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_beat_day            
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_env_day             
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_event_day           
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_imei_his_day	       
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_user_his_day        
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_event_props_open_day
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_music_play_day      
bin/hdfs dfs -mkdir -p /user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_video_play_day