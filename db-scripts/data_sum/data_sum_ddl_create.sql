CREATE EXTERNAL TABLE `data_sum.sum_did_use_his`(
  `dvc_id` string, 
  `p2` string, 
  `first_login_date` string, 
  `first_app_ver` string, 
  `last_login_date` string, 
  `last_app_ver` string)
PARTITIONED BY ( 
  `dt` string, 
  `pf` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_did_use_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1436090385')
;
CREATE EXTERNAL TABLE `data_sum.sum_sdk_phone_app_day`(
  `start_id` string, 
  `imei` string, 
  `current_time` string, 
  `app_name` string, 
  `app_version` string, 
  `app_store` string, 
  `send_time` string, 
  `letv_uid` string, 
  `app_run_id` string, 
  `start_from` string, 
  `ip` string, 
  `ip_country_code` string, 
  `ip_country_name` string, 
  `ip_region_code` string, 
  `ip_region_name` string, 
  `ip_province_code` string, 
  `ip_province_name` string, 
  `ip_city_code` string, 
  `ip_city_name` string, 
  `ip_isp` string, 
  `server_time` string, 
  `act_time` string, 
  `act_name` string, 
  `act_des` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_sdk_phone_app_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1436775513')
;
CREATE EXTERNAL TABLE `data_sum.sum_sdk_phone_event_game_day`(
  `start_id` string COMMENT '??ID', 
  `current_time` string COMMENT '??????', 
  `app_name` string COMMENT '????', 
  `app_version` string COMMENT 'APP??', 
  `event_id` string COMMENT '??ID', 
  `push_id` string COMMENT '??ID', 
  `widget_id` string COMMENT '??ID', 
  `result` string COMMENT '????', 
  `send_time` string COMMENT '??????', 
  `letv_uid` string COMMENT '???????', 
  `app_run_id` string COMMENT 'APP??ID', 
  `package_name` string COMMENT '???', 
  `imei` string COMMENT 'IMEI?', 
  `phone_no` string COMMENT '???????', 
  `isp` string COMMENT '???', 
  `network_type` string COMMENT '????', 
  `area` string COMMENT '??', 
  `areaid` string COMMENT '??id', 
  `search_result` string COMMENT '????', 
  `ip` string COMMENT 'IP??', 
  `ip_country_code` string COMMENT '??IP?????', 
  `ip_country_name` string COMMENT '??IP?????', 
  `ip_region_code` string COMMENT '??IP?????', 
  `ip_region_name` string COMMENT '??IP?????', 
  `ip_province_code` string COMMENT '??IP???', 
  `ip_province_name` string COMMENT '??IP?????', 
  `ip_city_code` string COMMENT '??IP???', 
  `ip_city_name` string COMMENT '??IP???', 
  `ip_isp` string COMMENT 'ip??????')
COMMENT '??SDK???????? props??'
PARTITIONED BY ( 
  `dt` string COMMENT '??')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_sdk_phone_event_game_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448446355')
;
CREATE EXTERNAL TABLE `data_sum.sum_sdk_phone_event_props_open_day`(
  `widget_id` string COMMENT '??ID', 
  `result` string COMMENT '????', 
  `send_time` string COMMENT '??????', 
  `letv_uid` string COMMENT '???????', 
  `app_run_id` string COMMENT 'APP??ID', 
  `package_name` string COMMENT '???', 
  `imei` string COMMENT 'IMEI?', 
  `phone_no` string COMMENT '???????', 
  `isp` string, 
  `network_type` string COMMENT '????', 
  `area` string COMMENT '??', 
  `areaid` string COMMENT '??id', 
  `search_result` string COMMENT '????', 
  `ip` string COMMENT 'IP??', 
  `ip_country_code` string COMMENT '??IP?????', 
  `ip_country_name` string COMMENT '??IP?????', 
  `ip_region_code` string COMMENT '??IP?????', 
  `ip_region_name` string COMMENT '??IP?????', 
  `ip_province_code` string COMMENT '??IP???', 
  `ip_province_name` string COMMENT '??IP?????', 
  `ip_city_code` string COMMENT '??IP???', 
  `ip_city_name` string COMMENT '??IP???', 
  `ip_isp` string COMMENT 'ip??????')
COMMENT 'SDK???????? props??'
PARTITIONED BY ( 
  `dt` string COMMENT '??')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.SequenceFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_sdk_phone_event_props_open_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448007587')
;
CREATE EXTERNAL TABLE `data_sum.sum_sdk_phone_imei_his_day`(
  `start_id` string, 
  `current_time` string, 
  `imei` string, 
  `server_time` string, 
  `mac` string, 
  `product_vendor` string, 
  `product_model` string, 
  `cp_version` string, 
  `build_version` string, 
  `is_root` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_sdk_phone_imei_his_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1437034165')
;
CREATE EXTERNAL TABLE `data_sum.sum_user_act_day`(
  `id` string, 
  `uid` string, 
  `country` string, 
  `area` string, 
  `province` string, 
  `city` string, 
  `p1` string, 
  `p2` string, 
  `p3` string, 
  `cid` string, 
  `pid` string, 
  `vid` string, 
  `act_code` string, 
  `act_result` string, 
  `pcode` string, 
  `fl` string, 
  `wz` string, 
  `ch` string, 
  `fake` string, 
  `act_times` bigint, 
  `act_property` map<string,string>)
PARTITIONED BY ( 
  `dt` string, 
  `product` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_user_act_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1435736466')
;
CREATE EXTERNAL TABLE `data_sum.sum_user_login_env_day`(
  `id` string, 
  `uid` string, 
  `ip` string, 
  `country` string, 
  `area` string, 
  `province` string, 
  `city` string, 
  `ref` string, 
  `pcode` string, 
  `p1` string, 
  `p2` string, 
  `p3` string, 
  `min_t` string, 
  `max_t` string, 
  `nettype` string, 
  `os` string, 
  `os_v` string, 
  `app_v` string, 
  `brand` string, 
  `terminal_id` string, 
  `resolution` string, 
  `browser` string, 
  `ch` string, 
  `fake` string, 
  `login_times` bigint, 
  `model` string, 
  `cs` string, 
  `ssid` string, 
  `lo` string, 
  `la` string)
PARTITIONED BY ( 
  `dt` string, 
  `product` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_user_login_env_day_bak'
TBLPROPERTIES (
  'last_modified_by'='data_platform', 
  'last_modified_time'='1445656985', 
  'transient_lastDdlTime'='1445656985')
;
CREATE EXTERNAL TABLE `data_sum.sum_user_play_summary_day`(
  `id` string, 
  `uid` string, 
  `p1` string, 
  `p2` string, 
  `p3` string, 
  `cid` string, 
  `pid` string, 
  `vid` string, 
  `stime` string, 
  `etime` string, 
  `vv` int, 
  `cv` int, 
  `pt` double, 
  `od_vv` int, 
  `od_cv` int, 
  `od_pt` int, 
  `live_vv` int, 
  `live_cv` int, 
  `live_pt` int, 
  `ca_vv` int, 
  `ca_cv` int, 
  `ca_pt` int, 
  `try_vv` int, 
  `try_cv` int, 
  `try_pt` int, 
  `pay_vv` int, 
  `pay_cv` int, 
  `pay_pt` int, 
  `off_vv` int, 
  `off_cv` int, 
  `off_pt` int, 
  `drag_ts` int, 
  `drag_a_ts` int, 
  `drag_b_ts` int, 
  `block_ts` int)
PARTITIONED BY ( 
  `dt` string, 
  `product` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_user_play_summary_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1435801765')
;
CREATE EXTERNAL TABLE `data_sum.sum_user_pv_day`(
  `id` string, 
  `uid` string, 
  `country` string, 
  `area` string, 
  `province` string, 
  `city` string, 
  `p1` string, 
  `p2` string, 
  `p3` string, 
  `ct` string, 
  `ch` string, 
  `ref` string, 
  `rcid` string, 
  `wordkey` string, 
  `cid` string, 
  `pid` string, 
  `vid` string, 
  `pcode` string, 
  `fake` string, 
  `pv` bigint, 
  `ip` string, 
  `ilu` string, 
  `schoolname` string, 
  `zid` string, 
  `cur_url` string)
PARTITIONED BY ( 
  `dt` string, 
  `product` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_user_pv_day_bak'
TBLPROPERTIES (
  'last_modified_by'='data_platform', 
  'last_modified_time'='1445488531', 
  'transient_lastDdlTime'='1445488531')
;
CREATE EXTERNAL TABLE `data_sum.sum_user_query_day`(
  `id` string, 
  `uid` string, 
  `ip` string, 
  `country` string, 
  `area` string, 
  `province` string, 
  `city` string, 
  `p1` string, 
  `p2` string, 
  `p3` string, 
  `ch` string, 
  `key` string, 
  `searchid` string, 
  `type` string, 
  `position` string, 
  `click` string, 
  `fake` string)
PARTITIONED BY ( 
  `dt` string, 
  `product` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_user_query_day_bak'
TBLPROPERTIES (
  'last_modified_by'='data_platform', 
  'last_modified_time'='1445840119', 
  'transient_lastDdlTime'='1445840119')
;
CREATE EXTERNAL TABLE `data_sum.sum_user_uuid_play_day`(
  `id` string, 
  `uid` string, 
  `uuid` string, 
  `p1` string, 
  `p2` string, 
  `p3` string, 
  `vid` string, 
  `pid` string, 
  `cid` string, 
  `ch` string, 
  `playtype` string, 
  `stime` string, 
  `etime` string, 
  `pay` string, 
  `off` string, 
  `station` string, 
  `zid` string, 
  `liveid` string, 
  `fake` string, 
  `player_version` string, 
  `url` string, 
  `ref` string, 
  `pcode` string, 
  `launch` bigint, 
  `init` bigint, 
  `gslb` bigint, 
  `cload` bigint, 
  `play` bigint, 
  `jump` bigint, 
  `time` bigint, 
  `pt` bigint, 
  `drag` bigint, 
  `drag_a_ts` bigint, 
  `drag_a_dur` bigint, 
  `drag_b_ts` bigint, 
  `drag_b_dur` bigint, 
  `block` bigint, 
  `play_end` bigint, 
  `cp` bigint, 
  `uuid_vv` bigint, 
  `uuid_cv` bigint, 
  `ip` string, 
  `country` string, 
  `area` string, 
  `province` string, 
  `city` string, 
  `flow` bigint, 
  `app_version` string, 
  `init_nt` string)
PARTITIONED BY ( 
  `dt` string, 
  `product` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/phone/datamarts/data_sum.db/sum_user_uuid_play_day'
TBLPROPERTIES (
  'last_modified_by'='data_platform', 
  'last_modified_time'='1452829196', 
  'transient_lastDdlTime'='1452829196')
;
