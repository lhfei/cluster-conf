#!/bin/bash

hive -e "SHOW CREATE TABLE data_sum.data_sum_sum_user_pv_day_tmp " 	  >> /home/kanghua/data_sum_ddl.sql
hive -e "SHOW CREATE TABLE data_sum.sum_did_use_his "                 >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_did_use_his_temp"             >> /home/kanghua/data_sum_ddl.sql    
hive -e "SHOW CREATE TABLE data_sum.sum_phone_source_day "            >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_phone_source_day_bak "       >> /home/kanghua/data_sum_ddl.sql       
hive -e "SHOW CREATE TABLE data_sum.sum_phone_tags_kpi_f "            >> /home/kanghua/data_sum_ddl.sql
hive -e "SHOW CREATE TABLE data_sum.sum_phone_tags_kpi_s "            >> /home/kanghua/data_sum_ddl.sql  
hive -e "SHOW CREATE TABLE data_sum.sum_phone_tags_kpi_t "            >> /home/kanghua/data_sum_ddl.sql    
hive -e "SHOW CREATE TABLE data_sum.sum_phone_tags_user_day "         >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_app_day "           >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_app_imei_his_day "  >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_app_usage_day "     >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_app_user_his_day "  >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_beat_day "          >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_env_day "           >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_event_day "         >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_imei_his_day "      >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_imei_his_day_old "  >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_music_play_day "    >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_user_his_day "      >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_sdk_phone_video_play_day "    >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_user_act_day "                >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_user_login_env_day "          >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_user_play_day "               >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_user_play_summary_day "       >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_user_pv_day "                 >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_user_query_day "              >> /home/kanghua/data_sum_ddl.sql     
hive -e "SHOW CREATE TABLE data_sum.sum_user_uuid_play_day "          >> /home/kanghua/data_sum_ddl.sql   