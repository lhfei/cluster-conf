
CREATE DATABASE IF NOT EXISTS dmr;

CREATE EXTERNAL TABLE `dmr.dmr_app_phone_tag_concern_day`(
  `last_update` string, 
  `app_name` string, 
  `tag_id` string, 
  `tag_name` string, 
  `concern_uv` string, 
  `last_concern_uv` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_app_phone_tag_concern_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446543288')
;CREATE TABLE `dmr.dmr_cid_cartn_day`(
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `oper_sys` string COMMENT '????', 
  `area_name` string COMMENT '????', 
  `cont_rat` string COMMENT '?????', 
  `sub_cid_name` string COMMENT '????', 
  `vid_type_name` string COMMENT '????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_cid_cartn_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446707408')
;CREATE TABLE `dmr.dmr_cid_movie_day`(
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `oper_sys` string COMMENT '????', 
  `rels_area_name` string COMMENT '??', 
  `is_pay` string COMMENT '????', 
  `vid_type_name` string COMMENT '????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_cid_movie_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446707408')
;CREATE TABLE `dmr.dmr_cid_p2_pf_type_day`(
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `cid` string COMMENT '??ID', 
  `cid_name` string COMMENT '????', 
  `oper_sys` string COMMENT '????', 
  `uv_v` string COMMENT '?????', 
  `uv_c` string COMMENT '???????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_cid_p2_pf_type_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446707408')
;CREATE TABLE `dmr.dmr_cid_pf_type_day`(
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `cid` string COMMENT '??ID', 
  `cid_name` string COMMENT '????', 
  `oper_sys` string COMMENT '????', 
  `uv_v` string, 
  `uv_c` string, 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_cid_pf_type_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446629994')
;CREATE TABLE `dmr.dmr_cid_sport_day`(
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `oper_sys` string COMMENT '????', 
  `is_pay` string COMMENT '????', 
  `sub_cid_name` string COMMENT '????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_cid_sport_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446707407')
;CREATE TABLE `dmr.dmr_cid_tvp_day`(
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `oper_sys` string COMMENT '????', 
  `rels_area_name` string COMMENT '??', 
  `is_hm` string COMMENT '????', 
  `vid_type_name` string COMMENT '????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_cid_tvp_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446707409')
;CREATE EXTERNAL TABLE `dmr.dmr_core_data_report_day`(
  `last_update` string COMMENT '??', 
  `col_new_users` string, 
  `col_active_users` string, 
  `col_mobile_cv` string, 
  `col_total_cv` string, 
  `col_mobile_pt` string, 
  `col_mobile_uv` string, 
  `col_mh5_cv` string, 
  `col_sdk_cv` string, 
  `col_all_user` string, 
  `col_dau_r` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_core_data_report_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447750264')
;CREATE EXTERNAL TABLE `dmr.dmr_flow_content_proj_detail_info_day`(
  `proj_id` string COMMENT '??id', 
  `proj_name` string COMMENT '????', 
  `start_day` string COMMENT '????', 
  `end_day` string COMMENT '????', 
  `pid` string COMMENT '??ID', 
  `vid` string COMMENT '??ID', 
  `zid` string COMMENT '??ID', 
  `zid_url` string COMMENT '??url', 
  `liveid` string COMMENT '??ID', 
  `url` string COMMENT '??url', 
  `ref` string COMMENT '????', 
  `ch` string COMMENT '??', 
  `station` string COMMENT '???', 
  `pid_name` string COMMENT '????', 
  `title` string COMMENT '??')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_flow_content_proj_detail_info_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447049791')
;CREATE EXTERNAL TABLE `dmr.dmr_flow_content_proj_info_day`(
  `proj_id` string, 
  `proj_name` string, 
  `start_day` string, 
  `end_day` string, 
  `pid` string, 
  `vid` string, 
  `zid` string, 
  `zid_url` string, 
  `liveid` string, 
  `url` string, 
  `ref` string, 
  `ch` string, 
  `station` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_flow_content_proj_info_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446107144')
;CREATE EXTERNAL TABLE `dmr.dmr_flow_content_proj_url_day`(
  `proj_id` string COMMENT '??id', 
  `proj_name` string COMMENT '????', 
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `p2` string COMMENT '???????', 
  `channel_type` string COMMENT '????', 
  `url` string COMMENT '??url', 
  `uv` string COMMENT '????', 
  `pv` bigint COMMENT '???', 
  `ip_count` string COMMENT '??ip?')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_flow_content_proj_url_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447049791')
;CREATE EXTERNAL TABLE `dmr.dmr_flow_video_content_proj_live_station_day`(
  `proj_id` string COMMENT '??id', 
  `proj_name` string COMMENT '????', 
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `type` string COMMENT '??', 
  `liveid_station` string COMMENT '??id-???', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `vvuv` string COMMENT '?????', 
  `cvuv` string COMMENT '???????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_flow_video_content_proj_live_station_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447049790')
;CREATE EXTERNAL TABLE `dmr.dmr_flow_video_content_proj_pid_day`(
  `proj_id` string COMMENT '??id', 
  `proj_name` string COMMENT '????', 
  `last_update` string COMMENT '??', 
  `pid` string COMMENT '??ID', 
  `pid_name` string COMMENT '????', 
  `pf` string COMMENT '??', 
  `p2` string COMMENT '???????', 
  `dvc_type` string COMMENT '????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `vvuv` string COMMENT '?????', 
  `cvuv` string COMMENT '???????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_flow_video_content_proj_pid_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447049791')
;CREATE EXTERNAL TABLE `dmr.dmr_flow_video_content_proj_total_day`(
  `proj_id` string COMMENT '??id', 
  `proj_name` string COMMENT '????', 
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `pv` bigint COMMENT '???', 
  `pvuv` string COMMENT '???????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `vvuv` string COMMENT '?????', 
  `cvuv` string COMMENT '???????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_flow_video_content_proj_total_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447049790')
;CREATE EXTERNAL TABLE `dmr.dmr_flow_video_content_proj_user_portr_week`(
  `proj_id` string COMMENT '??id', 
  `proj_name` string COMMENT '????', 
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `gender` string COMMENT '??', 
  `age` string COMMENT '??', 
  `edu` string COMMENT '??', 
  `purpower` string COMMENT '???', 
  `country_name` string COMMENT '????', 
  `region_name` string COMMENT '????', 
  `province_name` string COMMENT '????', 
  `city_name` string COMMENT '????', 
  `user_num` string COMMENT '???')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_flow_video_content_proj_user_portr_week'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447049792')
;CREATE EXTERNAL TABLE `dmr.dmr_flow_video_live_day`(
  `last_update` string COMMENT '??', 
  `pf` string COMMENT '??', 
  `p2` string COMMENT '???????', 
  `dvc_type` string COMMENT '????', 
  `liveid` string COMMENT '??ID', 
  `live_name` string COMMENT '????', 
  `start_time` string COMMENT '????', 
  `end_time` string COMMENT '????', 
  `fivemin_maxnum` string COMMENT '5?????????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `vvuv` string COMMENT '?????', 
  `cvuv` string COMMENT '???????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_flow_video_live_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448007587')
;CREATE TABLE `dmr.dmr_flow_video_pid_top_day`(
  `last_update` string COMMENT '??', 
  `pid` string COMMENT '??ID', 
  `pid_name` string COMMENT '????', 
  `cid` string COMMENT '??ID', 
  `cid_name` string COMMENT '????', 
  `platform` string COMMENT '????', 
  `vv_uv` bigint COMMENT '?????', 
  `cv_uv` bigint COMMENT '???????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pt` bigint COMMENT '????', 
  `offline_vv` bigint COMMENT '??VV', 
  `offline_cv` bigint COMMENT '??CV', 
  `offline_vvuv` bigint COMMENT '???????', 
  `offline_cvuv` bigint COMMENT '?????????')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_flow_video_pid_top_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446546102')
;CREATE TABLE `dmr.dmr_mac_last_login_uid_day`(
  `mac` string COMMENT '?????? mac ??', 
  `uid` string COMMENT '??ID', 
  `last_login_time` string COMMENT '??????', 
  `dvc_brand` string COMMENT '????', 
  `model` string COMMENT '??', 
  `device_type` string COMMENT '????', 
  `os` string COMMENT '????', 
  `terminal_id` string COMMENT '????')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.SequenceFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mac_last_login_uid_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1445848709')
;CREATE EXTERNAL TABLE `dmr.dmr_mhtml5_report_day`(
  `last_update` string COMMENT '??', 
  `col_p2` string, 
  `col_pv` string, 
  `col_uv` string, 
  `col_vv` string, 
  `col_cv` string, 
  `col_pt` bigint, 
  `col_cntry_name` string, 
  `col_prov_name` string, 
  `col_vvuv` string, 
  `col_cvuv` string, 
  `col_area_name` string, 
  `col_city_name` string, 
  `col_block_ts` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mhtml5_report_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447898992')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_active_new_daily`(
  `last_update` string, 
  `cdt` string, 
  `active_new` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_active_new_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114898')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_active_new_nbg_daily`(
  `last_update` string, 
  `cdt` string, 
  `group_title` string, 
  `build_version` string, 
  `active` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_active_new_nbg_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114891')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_active_new_prop_daily`(
  `last_update` string, 
  `cdt` string, 
  `external_model` string, 
  `zhishi` string, 
  `color` string, 
  `storage` string, 
  `version` string, 
  `active_new` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_active_new_prop_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114893')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_active_new_region_daily`(
  `last_update` string, 
  `cdt` string, 
  `province` string, 
  `city` string, 
  `active_new` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_active_new_region_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114893')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_active_prop_daily`(
  `last_update` string, 
  `cdt` string, 
  `model` string, 
  `external_model` string, 
  `zhishi` string, 
  `color` string, 
  `storage` string, 
  `active_imei` string, 
  `active_leuid` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_active_prop_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114890')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_active_prop_nbg_daily`(
  `last_update` string, 
  `cdt` string, 
  `external_model` string, 
  `phone_system` string, 
  `phone_color` string, 
  `phone_storage` string, 
  `group_title` string, 
  `build_version` string, 
  `active` string, 
  `leuid_active` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_active_prop_nbg_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114890')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_app_active_model_daily`(
  `last_update` string, 
  `cdt` string, 
  `app_name` string, 
  `value` string, 
  `external_model` string, 
  `active` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_app_active_model_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114892')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_app_active_region_daily`(
  `last_update` string, 
  `cdt` string, 
  `app_name` string, 
  `value` string, 
  `ip_province_name` string, 
  `ip_city_name` string, 
  `active` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_app_active_region_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114892')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_app_event_daily`(
  `last_update` string, 
  `cdt` string, 
  `app_name` string, 
  `event_id` string, 
  `video_num` string, 
  `video_user` string, 
  `total_num` string, 
  `total_user` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_app_event_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114894')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_app_super_activemobileadd_daily`(
  `last_update` string, 
  `cdt` string, 
  `app_name` string, 
  `value` string, 
  `external_model` string, 
  `software_version` string, 
  `activemobileadd` string, 
  `group_title` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_app_super_activemobileadd_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114890')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_app_super_activereuser_daily`(
  `last_update` string, 
  `cdt` string, 
  `app_name` string, 
  `value` string, 
  `activereuser` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_app_super_activereuser_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114890')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_app_super_event_detail_daily`(
  `last_update` string, 
  `cdt` string, 
  `app_name` string, 
  `value` string, 
  `external_model` string, 
  `software_version` string, 
  `event_name` string, 
  `event_value` string, 
  `num` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_app_super_event_detail_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114889')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_app_super_newmobileadd_daily`(
  `last_update` string, 
  `cdt` string, 
  `app_name` string, 
  `value` string, 
  `external_model` string, 
  `software_version` string, 
  `newmobileadd` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_app_super_newmobileadd_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114889')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_app_super_newreuser_daily`(
  `last_update` string, 
  `cdt` string, 
  `app_name` string, 
  `value` string, 
  `newreuser` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_app_super_newreuser_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114888')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_appoint_daily`(
  `last_update` string, 
  `cdt` string, 
  `create_at` string, 
  `user_num` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_appoint_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114894')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_core_data_report_day`(
  `last_update` string COMMENT '??', 
  `dau` string COMMENT '??????', 
  `new_user` string COMMENT '????', 
  `all_user` string COMMENT '????', 
  `mobile_vvuv` string COMMENT '????????', 
  `mobile_cv` string COMMENT '????????', 
  `mh5_cv` string COMMENT 'M?h5??????', 
  `sdk_cv` string COMMENT 'sdk?????', 
  `new_r` string COMMENT '??????', 
  `dau_r` string COMMENT '??????', 
  `ratio_7_r` string COMMENT '7??????', 
  `gphone_dau` string COMMENT '???????', 
  `iphone_dau` string COMMENT '?????????', 
  `ipad_dau` string COMMENT '??pad?????', 
  `other_dau` string COMMENT '???????????', 
  `gphone_vvuv` string COMMENT '?????????', 
  `iphone_vvuv` string COMMENT '?????????', 
  `ipad_vvuv` string COMMENT '??pad?????', 
  `other_vvuv` string COMMENT '???????????', 
  `gphone_cv` bigint, 
  `iphone_cv` bigint, 
  `ipad_cv` bigint, 
  `other_cv` bigint COMMENT '???????????', 
  `ratio_7` string COMMENT '7????', 
  `mh5_new` string COMMENT 'mh5????', 
  `sdk_new` string COMMENT 'sdk?????', 
  `ratio_7_active` string COMMENT '7????????', 
  `push_awake` string COMMENT '????????', 
  `m_uv` string COMMENT 'm?????', 
  `h5_uv` string COMMENT 'h5????', 
  `m_cv` string COMMENT 'm???????', 
  `h5_cv` string COMMENT 'h5?????', 
  `tvp_cv` bigint, 
  `movie_cv` bigint, 
  `cartn_cv` bigint, 
  `var_cv` bigint, 
  `amuse_cv` bigint, 
  `hot_cv` bigint, 
  `sport_cv` bigint, 
  `music_cv` bigint, 
  `ratio_7_active_r` string COMMENT '??7??????')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_core_data_report_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447744226')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_cum_dis_daily`(
  `last_update` string, 
  `cdt` string, 
  `external_model` string, 
  `build_version` string, 
  `group_title` string, 
  `phone_system` string, 
  `phone_storage` string, 
  `phone_color` string, 
  `num` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_cum_dis_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114888')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_delive_region_daily`(
  `last_update` string, 
  `cdt` string, 
  `order_date` string, 
  `finish_date` string, 
  `province` string, 
  `city` string, 
  `district` string, 
  `order_channel` string, 
  `order_day` string, 
  `order_all` string, 
  `phone_day` string, 
  `phone_all` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_delive_region_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114892')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_main_report_day`(
  `last_update` string COMMENT '??', 
  `col_p1` string, 
  `col_p2` string, 
  `col_os_xh` string, 
  `col_appv` string, 
  `col_incr_user` string, 
  `col_active_user` string, 
  `col_active_uid` string, 
  `col_vv` string, 
  `col_cv` string, 
  `col_vvuv` string, 
  `col_cvuv` string, 
  `col_pt` bigint, 
  `col_start_times` string, 
  `col_block_ts` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_main_report_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447834696')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_net_active_daily`(
  `last_update` string, 
  `cdt` string, 
  `model` string, 
  `storage` string, 
  `zhishi` string, 
  `color` string, 
  `version` string, 
  `province` string, 
  `city` string, 
  `net_day` string, 
  `net_all` string, 
  `group_title` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_net_active_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114892')
;CREATE EXTERNAL TABLE `dmr.dmr_phone_outfact_daily`(
  `last_update` string, 
  `cdt` string, 
  `model` string, 
  `storage` string, 
  `zhishi` string, 
  `color` string, 
  `version` string, 
  `out_day` string, 
  `out_all` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_outfact_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114891')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_rush_buy_daily`(
  `last_update` string, 
  `cdt` string, 
  `create_at` string, 
  `external_model` string, 
  `phone_storage` string, 
  `phone_system` string, 
  `phone_color` string, 
  `software_version` string, 
  `order_province` string, 
  `order_city` string, 
  `order_status` string, 
  `order_type` string, 
  `phone_num` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_rush_buy_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114894')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_sales_daily`(
  `last_update` string, 
  `cdt` string, 
  `model` string, 
  `storage` string, 
  `zhishi` string, 
  `color` string, 
  `version` string, 
  `province` string, 
  `city` string, 
  `half_net_day` string, 
  `half_net_all` string, 
  `groups` string, 
  `order_channel` string, 
  `order_receiver` string, 
  `order_province` string, 
  `order_city` string, 
  `order_address` string, 
  `heyue` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_sales_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114891')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_sign_daily`(
  `last_update` string, 
  `cdt` string, 
  `order_province` string, 
  `order_city` string, 
  `order_address` string, 
  `order_way` string, 
  `order_receiver` string, 
  `external_model` string, 
  `phone_system` string, 
  `phone_color` string, 
  `phone_storage` string, 
  `software_version` string, 
  `group_title` string, 
  `quantity` string, 
  `build_version` string, 
  `num` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_sign_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114888')
;CREATE EXTERNAL TABLE `dmr.dmr_mobile_super_app_open_use_daily`(
  `last_update` string, 
  `cdt` string, 
  `app_name` string, 
  `value` string, 
  `external_model` string, 
  `software_version` string, 
  `open_num` string, 
  `user_num` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_mobile_super_app_open_use_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114087')
;CREATE EXTERNAL TABLE `dmr.dmr_p2_vv_cv_pv_pt_inst_click_stup_uv_day`(
  `last_update` string COMMENT '??', 
  `cdt` string COMMENT '??', 
  `product` string COMMENT '????', 
  `p2` string COMMENT '???????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pv` bigint COMMENT '???', 
  `pt` bigint COMMENT '????', 
  `vv_uv` bigint COMMENT '?????', 
  `cv_uv` bigint COMMENT '???????', 
  `pv_uv` string COMMENT '?????', 
  `all_uv` string COMMENT '????', 
  `inst` string COMMENT '????', 
  `inst_uv` string COMMENT '?????', 
  `clicks` string COMMENT '???', 
  `clicks_uv` string COMMENT '?????', 
  `stups` string COMMENT '????', 
  `stups_uv` string COMMENT '?????')
PARTITIONED BY ( 
  `dt` string COMMENT '???', 
  `pf` string COMMENT '??')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_p2_vv_cv_pv_pt_inst_click_stup_uv_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447664091')
;CREATE EXTERNAL TABLE `dmr.dmr_p2_vv_cv_pv_pt_inst_click_stup_uv_mon`(
  `last_update` string COMMENT '??', 
  `cdt` string COMMENT '??', 
  `product` string COMMENT '????', 
  `p2` string COMMENT '???????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pv` bigint COMMENT '???', 
  `pt` bigint COMMENT '????', 
  `vv_uv` bigint COMMENT '?????', 
  `cv_uv` bigint COMMENT '???????', 
  `pv_uv` string COMMENT '?????', 
  `all_uv` string COMMENT '????', 
  `inst` string COMMENT '????', 
  `inst_uv` string COMMENT '?????', 
  `clicks` string COMMENT '???', 
  `clicks_uv` string COMMENT '?????', 
  `stups` string COMMENT '????', 
  `stups_uv` string COMMENT '?????')
PARTITIONED BY ( 
  `dt` string COMMENT '???', 
  `pf` string COMMENT '??')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_p2_vv_cv_pv_pt_inst_click_stup_uv_mon'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447664092')
;CREATE EXTERNAL TABLE `dmr.dmr_p2_vv_cv_pv_pt_inst_click_stup_uv_week`(
  `last_update` string COMMENT '??', 
  `cdt` string COMMENT '??', 
  `product` string COMMENT '????', 
  `p2` string COMMENT '???????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pv` bigint COMMENT '???', 
  `pt` bigint COMMENT '????', 
  `vv_uv` bigint COMMENT '?????', 
  `cv_uv` bigint COMMENT '???????', 
  `pv_uv` string COMMENT '?????', 
  `all_uv` string COMMENT '????', 
  `inst` string COMMENT '????', 
  `inst_uv` string COMMENT '?????', 
  `clicks` string COMMENT '???', 
  `clicks_uv` string COMMENT '?????', 
  `stups` string COMMENT '????', 
  `stups_uv` string COMMENT '?????')
PARTITIONED BY ( 
  `dt` string COMMENT '???', 
  `pf` string COMMENT '??')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_p2_vv_cv_pv_pt_inst_click_stup_uv_week'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447664091')
;CREATE TABLE `dmr.dmr_pf_vv_cv_pv_pt_inst_click_stup_uv_day`(
  `last_update` string COMMENT '??', 
  `cdt` string COMMENT '??', 
  `product` string COMMENT '????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pv` bigint COMMENT '???', 
  `pt` bigint COMMENT '????', 
  `vv_uv` bigint COMMENT '?????', 
  `cv_uv` bigint COMMENT '???????', 
  `pv_uv` string COMMENT '?????', 
  `all_uv` string COMMENT '????', 
  `inst` string COMMENT '????', 
  `inst_uv` string COMMENT '?????', 
  `clicks` string COMMENT '???', 
  `clicks_uv` string COMMENT '?????', 
  `stups` string COMMENT '????', 
  `stups_uv` string COMMENT '?????')
PARTITIONED BY ( 
  `dt` string COMMENT '????', 
  `pf` string COMMENT '?????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_pf_vv_cv_pv_pt_inst_click_stup_uv_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446629994')
;CREATE EXTERNAL TABLE `dmr.dmr_pf_vv_cv_pv_pt_inst_click_stup_uv_mon`(
  `last_update` string COMMENT '??', 
  `cdt` string COMMENT '??', 
  `product` string COMMENT '????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pv` bigint COMMENT '???', 
  `pt` bigint COMMENT '????', 
  `vv_uv` bigint COMMENT '?????', 
  `cv_uv` bigint COMMENT '???????', 
  `pv_uv` string COMMENT '?????', 
  `all_uv` string COMMENT '????', 
  `inst` string COMMENT '????', 
  `inst_uv` string COMMENT '?????', 
  `clicks` string COMMENT '???', 
  `clicks_uv` string COMMENT '?????', 
  `stups` string COMMENT '????', 
  `stups_uv` string COMMENT '?????')
PARTITIONED BY ( 
  `dt` string COMMENT '????', 
  `pf` string COMMENT '??')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_pf_vv_cv_pv_pt_inst_click_stup_uv_mon'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447664090')
;CREATE EXTERNAL TABLE `dmr.dmr_pf_vv_cv_pv_pt_inst_click_stup_uv_week`(
  `last_update` string COMMENT '??', 
  `cdt` string COMMENT '??', 
  `product` string COMMENT '????', 
  `vv` bigint COMMENT '???', 
  `cv` bigint COMMENT '?????', 
  `pv` bigint COMMENT '???', 
  `pt` bigint COMMENT '????', 
  `vv_uv` bigint COMMENT '?????', 
  `cv_uv` bigint COMMENT '???????', 
  `pv_uv` string COMMENT '?????', 
  `all_uv` string COMMENT '????', 
  `inst` string COMMENT '????', 
  `inst_uv` string COMMENT '?????', 
  `clicks` string COMMENT '???', 
  `clicks_uv` string COMMENT '?????', 
  `stups` string COMMENT '????', 
  `stups_uv` string COMMENT '?????')
PARTITIONED BY ( 
  `dt` string COMMENT '???', 
  `pf` string COMMENT '??')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_pf_vv_cv_pv_pt_inst_click_stup_uv_week'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447664092')
;CREATE EXTERNAL TABLE `dmr.dmr_phone_active_area_daily`(
  `last_update` string, 
  `cdt` string, 
  `country` string, 
  `province` string, 
  `city` string, 
  `active` string, 
  `leuid_active` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_phone_active_area_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114894')
;CREATE EXTERNAL TABLE `dmr.dmr_phone_active_buildversion_daily`(
  `last_update` string, 
  `cdt` string, 
  `buildversion` string, 
  `active` string, 
  `leuid_active` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_phone_active_buildversion_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114893')
;CREATE EXTERNAL TABLE `dmr.dmr_phone_active_daily`(
  `last_update` string, 
  `cdt` string, 
  `active` string, 
  `leuid_active` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_phone_active_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114893')
;CREATE EXTERNAL TABLE `dmr.dmr_phone_app_active_day`(
  `last_update` string, 
  `external_model` string, 
  `group_title` string, 
  `build_version_l1` string, 
  `build_version_l2` string, 
  `build_version_l3` string, 
  `phone_system` string, 
  `phone_color` string, 
  `phone_storage` string, 
  `app_name` string, 
  `dau` string, 
  `dau_1d` string, 
  `mobile_active` string, 
  `user_newadd` string, 
  `mobile_newadd` string, 
  `remain_1d` string, 
  `user_newadd_1d` string, 
  `remain_7d` string, 
  `user_newadd_7d` string, 
  `active_7d` string, 
  `mobile_active_7d` string, 
  `active_30d` string, 
  `mobile_active_30d` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_phone_app_active_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114124')
;CREATE EXTERNAL TABLE `dmr.dmr_phone_newleuidadd_area_daily`(
  `last_update` string, 
  `cdt` string, 
  `province` string, 
  `city` string, 
  `leuid_newadd` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_phone_newleuidadd_area_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114895')
;CREATE EXTERNAL TABLE `dmr.dmr_phone_newleuidadd_buildversion_daily`(
  `last_update` string, 
  `cdt` string, 
  `buildversion` string, 
  `leuid_newadd` string, 
  `external_model` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_phone_newleuidadd_buildversion_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114895')
;CREATE EXTERNAL TABLE `dmr.dmr_phone_newleuidadd_daily`(
  `last_update` string, 
  `cdt` string, 
  `leuid_newadd` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_phone_newleuidadd_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446114895')
;CREATE TABLE `dmr.dmr_phone_tags_kpi_f_day`(
  `app_name` string, 
  `add_tag_count` string, 
  `accu_tag_count` string, 
  `add_uid_count` string, 
  `accu_uid_count` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_phone_tags_kpi_f_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448337025')
;CREATE TABLE `dmr.dmr_phone_tags_kpi_s_day`(
  `app_name` string, 
  `tag_order` string, 
  `tag_id` string, 
  `uid_count` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_phone_tags_kpi_s_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448337026')
;CREATE TABLE `dmr.dmr_phone_tags_kpi_t_day`(
  `app_name` string, 
  `tag_order` string, 
  `tag_id` string, 
  `accu_uid_count` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_phone_tags_kpi_t_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448337027')
;CREATE EXTERNAL TABLE `dmr.dmr_user_active_vip_day`(
  `pf` string COMMENT '??', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `user_id` bigint COMMENT '??id', 
  `cv` bigint COMMENT '?????', 
  `pt` bigint COMMENT '????')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.SequenceFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_user_active_vip_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447640500')
;CREATE TABLE `dmr.dmr_user_busi_analysis_mon`(
  `biz` string, 
  `targ_no` int, 
  `targ_catg` string, 
  `targ_value` string, 
  `targ_desc` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_user_busi_analysis_mon'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447052275')
;CREATE EXTERNAL TABLE `dmr.dmr_user_keep_new_report_day`(
  `last_update` string COMMENT '??', 
  `col_newday` string, 
  `col_p1` string, 
  `col_p2` string, 
  `col_os` string, 
  `col_appv` string, 
  `col_first_pcode` string, 
  `col_type` string, 
  `col_name` string, 
  `col_model` string, 
  `col_new` string, 
  `col_ret` string, 
  `col_vvuv` string, 
  `col_cvuv` string, 
  `col_vv` string, 
  `col_cv` string, 
  `col_pt` bigint, 
  `col_login_ts` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_user_keep_new_report_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447917759')
;CREATE TABLE `dmr.dmr_user_touch_ls_day`(
  `dvc_id` string COMMENT '??ID', 
  `user_id` bigint COMMENT '??id', 
  `nickname` string COMMENT '??', 
  `last_login_date` string COMMENT '????????', 
  `user_active_day` string COMMENT '??????', 
  `user_login_list` string COMMENT '??????', 
  `cid_cname_value` string COMMENT '??????', 
  `movie_cat_value` string COMMENT '??????', 
  `movie_dir_value` string COMMENT '??????', 
  `movie_star_value` string COMMENT '??????', 
  `movie_area_value` string COMMENT '??????', 
  `tv_cat_value` string COMMENT '???????', 
  `tv_dir_value` string COMMENT '???????', 
  `tv_star_value` string COMMENT '???????', 
  `tv_area_value` string COMMENT '?????????', 
  `cartoon_cat_value` string COMMENT '????????', 
  `cartoon_area_value` string COMMENT '????????', 
  `long_cname_value` string COMMENT '???????', 
  `long_star_value` string COMMENT '?????????', 
  `long_dir_value` string COMMENT '?????????', 
  `long_area_value` string COMMENT '?????????', 
  `vip_cat_value` string COMMENT '??????????', 
  `vip_star_value` string COMMENT '??????????', 
  `vip_dir_value` string COMMENT '??????????', 
  `vip_area_value` string COMMENT '??????????', 
  `vip_release_date` string COMMENT '????????', 
  `sport_style_value` string COMMENT '????????', 
  `music_style_value` string COMMENT '??????', 
  `music_singer_value` string COMMENT '??????', 
  `music_area_value` string COMMENT '??????', 
  `play_vids` string COMMENT '??vid??', 
  `liveids` string COMMENT '??lid??', 
  `collect_num` string COMMENT '????', 
  `collect_vids` string COMMENT '??vid??', 
  `expire_date` string COMMENT '??????')
PARTITIONED BY ( 
  `dt` string, 
  `product` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/dmr_user_touch_ls_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447814002')
;CREATE EXTERNAL TABLE `dmr.invites`(
  `foo` int, 
  `bar` string)
PARTITIONED BY ( 
  `ds` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/invites'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447645252')
;CREATE TABLE `dmr.pokes`(
  `foo` int, 
  `bar` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/dmr.db/pokes'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='5812', 
  'transient_lastDdlTime'='1447645288')
