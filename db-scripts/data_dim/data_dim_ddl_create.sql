CREATE DATABASE IF NOT EXISTS data_dim;
use data_dim;

CREATE TABLE `data_dim.dim_auid_compare_md5`(
  `old_auid` string, 
  `new_auid` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_auid_compare_md5'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449459228')
;
CREATE EXTERNAL TABLE `data_dim.dim_cde_ip_city`(
  `ip_city_code` string, 
  `ip_city_name` string, 
  `ip_province_code` string, 
  `ip_province_name` string, 
  `ip_country_code` string, 
  `ip_country_name` string, 
  `city_code` string, 
  `city_name` string, 
  `province_code` string, 
  `province_name` string, 
  `country_code` string, 
  `country_name` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_cde_ip_city'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'numFiles'='1', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='39693', 
  'transient_lastDdlTime'='1449743308')
;
CREATE EXTERNAL TABLE `data_dim.dim_cde_ip_country`(
  `ip_country_code` string, 
  `ip_country_name` string, 
  `country_code` string, 
  `country_name` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_cde_ip_country'
TBLPROPERTIES (
  'transient_lastDdlTime'='1450925012')
;
CREATE EXTERNAL TABLE `data_dim.dim_cde_ip_district`(
  `ip_city_code` string, 
  `ip_city_name` string, 
  `ip_province_code` string, 
  `ip_province_name` string, 
  `ip_country_code` string, 
  `ip_country_name` string, 
  `district_code` string, 
  `district_name` string, 
  `city_code` string, 
  `city_name` string, 
  `province_code` string, 
  `province_name` string, 
  `country_code` string, 
  `country_name` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_cde_ip_district'
TBLPROPERTIES (
  'transient_lastDdlTime'='1450925269')
;
CREATE EXTERNAL TABLE `data_dim.dim_cde_ip_loc`(
  `district_code` string, 
  `district_name` string, 
  `city_code` string, 
  `city_name` string, 
  `province_code` string, 
  `province_name` string, 
  `country_code` string, 
  `country_name` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_cde_ip_loc'
TBLPROPERTIES (
  'transient_lastDdlTime'='1450925359')
;
CREATE EXTERNAL TABLE `data_dim.dim_cde_ip_province`(
  `ip_province_code` string, 
  `ip_province_name` string, 
  `ip_country_code` string, 
  `ip_country_name` string, 
  `province_code` string, 
  `province_name` string, 
  `country_code` string, 
  `country_name` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_cde_ip_province'
TBLPROPERTIES (
  'transient_lastDdlTime'='1450925418')
;
CREATE EXTERNAL TABLE `data_dim.dim_cde_videotype_dict`(
  `videotype` string, 
  `vtype_dict` string, 
  `vtype_note` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_cde_videotype_dict'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'numFiles'='1', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='2788', 
  'transient_lastDdlTime'='1449743389')
;
CREATE EXTERNAL TABLE `data_dim.dim_chnl_mc_day`(
  `native_chnl_code` string, 
  `native_chnl_name` string, 
  `par_chnl_code` string, 
  `par_chnl_name` string, 
  `par_intro_name` string, 
  `native_create_date` string, 
  `native_update_date` string, 
  `partner_price` float, 
  `par_create_date` string, 
  `par_update_date` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_chnl_mc_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447918849')
;
CREATE EXTERNAL TABLE `data_dim.dim_code_rate_cdn`(
  `channel` string, 
  `vtype` string, 
  `flag` string, 
  `rate` string, 
  `state` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_code_rate_cdn'
TBLPROPERTIES (
  'transient_lastDdlTime'='1436167299')
;
CREATE EXTERNAL TABLE `data_dim.dim_live_sports_day`(
  `liveid` string COMMENT '??ID', 
  `live_stream_id` string COMMENT '???id', 
  `begintime` string COMMENT '????', 
  `endtime` string COMMENT '????', 
  `live_stream_name` string COMMENT '?????', 
  `live_name` string COMMENT '????', 
  `title` string COMMENT '??', 
  `season` string COMMENT '??', 
  `level1` string COMMENT '??1', 
  `level2` string COMMENT '??2', 
  `level1_name` string COMMENT '????', 
  `level2_name` string COMMENT '????', 
  `pid` string COMMENT '??ID', 
  `vid` string COMMENT '??ID', 
  `cid` string COMMENT '??ID', 
  `csid` string COMMENT 'csid', 
  `update_timestamp` string COMMENT '???')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_live_sports_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447294169')
;
CREATE TABLE `data_dim.dim_mms_cid_imp`(
  `cid` string, 
  `value` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_mms_cid_imp'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='38', 
  'rawDataSize'='376', 
  'totalSize'='326', 
  'transient_lastDdlTime'='1452531650')
;
CREATE EXTERNAL TABLE `data_dim.dim_mms_vid_day`(
  `vid` string, 
  `vid_name` string, 
  `vid_pinyin_vbb` string, 
  `vid_name_en` string, 
  `vid_name_alias` string, 
  `vid_chnl` string, 
  `vid_chnl_name` string, 
  `vid_type` string, 
  `vid_type_name` string, 
  `pid` string, 
  `pid_name` string, 
  `pid_type` string, 
  `pid_type_name` string, 
  `pid_tag` string, 
  `vid_pid_order` string, 
  `vid_sub_title` string, 
  `vid_desc` string, 
  `vid_tag` string, 
  `cid` string, 
  `cid_name` string, 
  `sub_cid` string, 
  `sub_cid_name` string, 
  `tot_epsd` string, 
  `is_end` string, 
  `is_hd` string, 
  `movie_type` string, 
  `play_stat` string, 
  `is_pay` string, 
  `cr_type` string, 
  `cr_firm` string, 
  `vid_dur` int, 
  `rels_stat` string, 
  `del_tag` string, 
  `score` string, 
  `rels_date` string, 
  `rels_area_id` string, 
  `rels_area_name` string, 
  `letv_rels_data` string, 
  `star_id` string, 
  `star_name` string, 
  `dire_id` string, 
  `dire_name` string, 
  `lan_id` string, 
  `lan_name` string, 
  `shot_qual` string, 
  `is_hm` string, 
  `letv_logo` string, 
  `on_time` string, 
  `off_time` string, 
  `fit_age` string, 
  `fit_age_desc` string, 
  `cont_rat` string, 
  `cont_rat_desc` string, 
  `can_srch` string, 
  `site_tag` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_mms_vid_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1436168278')
;
CREATE EXTERNAL TABLE `data_dim.dim_mms_vid_hk_day`(
  `vid` string, 
  `vid_name` string, 
  `vid_pinyin_vbb` string, 
  `vid_name_en` string, 
  `vid_name_alias` string, 
  `vid_chnl` string, 
  `vid_chnl_name` string, 
  `vid_type` string, 
  `vid_type_name` string, 
  `pid` string, 
  `pid_name` string, 
  `pid_type` string, 
  `pid_type_name` string, 
  `pid_tag` string, 
  `vid_pid_order` string, 
  `vid_sub_title` string, 
  `vid_desc` string, 
  `vid_tag` string, 
  `cid` string, 
  `cid_name` string, 
  `sub_cid` string, 
  `sub_cid_name` string, 
  `tot_epsd` string, 
  `is_end` string, 
  `is_hd` string, 
  `movie_type` string, 
  `play_stat` string, 
  `is_pay` string, 
  `cr_type` string, 
  `cr_firm` string, 
  `vid_dur` int, 
  `rels_stat` string, 
  `del_tag` string, 
  `score` string, 
  `rels_date` string, 
  `rels_area_id` string, 
  `rels_area_name` string, 
  `letv_rels_data` string, 
  `star_id` string, 
  `star_name` string, 
  `dire_id` string, 
  `dire_name` string, 
  `lan_id` string, 
  `lan_name` string, 
  `shot_qual` string, 
  `is_hm` string, 
  `letv_logo` string, 
  `on_time` string, 
  `off_time` string, 
  `fit_age` string, 
  `fit_age_desc` string, 
  `cont_rat` string, 
  `cont_rat_desc` string, 
  `can_srch` string, 
  `site_tag` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_mms_vid_hk_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1436168414')
;
CREATE TABLE `data_dim.dim_p1_p2_imp`(
  `p1` string, 
  `p2` string, 
  `p2_name` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/dim_p1_p2_imp'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='1163', 
  'transient_lastDdlTime'='1452537624')
;
CREATE TABLE `data_dim.error_dict`(
  `seq_flag` string, 
  `err_flag` string, 
  `err_desc` string, 
  `is_inf` string, 
  `source_desc` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/error_dict'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='8087', 
  'transient_lastDdlTime'='1450945910')
;
CREATE TABLE `data_dim.hot_vid_pid_desc`(
  `flag_f` string, 
  `flag_s` string, 
  `hot_name` string, 
  `pid` string, 
  `vid` string, 
  `tag` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/hot_vid_pid_desc'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='0', 
  'rawDataSize'='0', 
  'totalSize'='10377', 
  'transient_lastDdlTime'='1450248786')
;
CREATE TABLE `data_dim.sdk_app_name`(
  `app_code` string, 
  `value` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/sdk_app_name'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444976112')
;
CREATE TABLE `data_dim.sdk_event_name`(
  `event_id` string, 
  `value` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/data_dim.db/sdk_event_name'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444983964')
;
