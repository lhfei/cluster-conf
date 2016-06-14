;CREATE EXTERNAL TABLE data_sum.data_sum_sum_user_pv_day_tmp(
  id string, 
  uid string, 
  country string, 
  area string, 
  province string, 
  city string, 
  p1 string, 
  p2 string, 
  p3 string, 
  ct string, 
  ch string, 
  ref string, 
  rcid string, 
  wordkey string, 
  cid string, 
  pid string, 
  vid string, 
  pcode string, 
  fake string, 
  pv bigint, 
  ip string, 
  ilu string, 
  schoolname string, 
  zid string, 
  cur_url string)
PARTITIONED BY ( 
  dt string, 
  product string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY 'u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_user_pv_day_tmp'
TBLPROPERTIES (
  'numPartitions'='1', 
  'numFiles'='32', 
  'last_modified_by'='hadoop', 
  'last_modified_time'='1440397625', 
  'transient_lastDdlTime'='1440397625', 
  'numRows'='0', 
  'totalSize'='3527011562', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_did_use_his(
  dvc_id string, 
  p2 string, 
  first_login_date string, 
  first_app_ver string, 
  last_login_date string, 
  last_app_ver string)
PARTITIONED BY ( 
  dt string, 
  pf string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_did_use_his'
TBLPROPERTIES (
  'numPartitions'='611', 
  'numFiles'='68910', 
  'last_modified_by'='jenkins', 
  'last_modified_time'='1440486457', 
  'transient_lastDdlTime'='1447954767', 
  'numRows'='0', 
  'totalSize'='65543270757924', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_did_use_his_temp(
  dvc_id string, 
  p2 string, 
  first_login_date string, 
  first_app_ver string)
PARTITIONED BY ( 
  dt string, 
  pf string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_did_use_his_temp'
TBLPROPERTIES (
  'numPartitions'='7', 
  'numFiles'='2881', 
  'transient_lastDdlTime'='1431332296', 
  'numRows'='0', 
  'totalSize'='49153728936', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_phone_source_day(
  imei string, 
  imei2 string, 
  sn string, 
  ui_version string, 
  software_version string, 
  hardware_version string, 
  head_code string, 
  motherboard_code string, 
  repaird string, 
  product_date string, 
  shipping_date string, 
  pcb_sn string, 
  production_number string, 
  letv_part_number string, 
  plan_id string, 
  factory_part_number string, 
  sale_area string, 
  send_time string, 
  factory_delivery_time string, 
  factory string, 
  factory_delivery_id string, 
  activation_time string, 
  activation_halfhour_time string, 
  activation_halfhour_mobile string, 
  status string, 
  plan_create_username string, 
  plan_create_time string, 
  model string, 
  group_id string, 
  send_username string, 
  godown_entry_id string, 
  description string, 
  external_model string, 
  group_is_default string, 
  group_title string, 
  group_description string, 
  group_status string, 
  phone_model string, 
  phone_system string, 
  phone_color string, 
  phone_storage string, 
  order_id string, 
  order_province string, 
  order_city string, 
  order_district string, 
  order_address string, 
  order_status string, 
  order_way string, 
  order_create_date string, 
  order_pay_date string, 
  order_send_date string, 
  order_receive_date string, 
  order_user_id string, 
  order_receiver string, 
  order_receiver_mobile string, 
  order_storage string, 
  order_pm_name string, 
  order_pm_provider string, 
  order_pm_type string, 
  order_pm_description string, 
  order_type string, 
  quantity string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_phone_source_day'
TBLPROPERTIES (
  'numPartitions'='109', 
  'numFiles'='174', 
  'transient_lastDdlTime'='1447964660', 
  'numRows'='0', 
  'totalSize'='17378979237', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_phone_source_day_bak(
  imei string, 
  imei2 string, 
  sn string, 
  ui_version string, 
  software_version string, 
  hardware_version string, 
  head_code string, 
  motherboard_code string, 
  repaird string, 
  product_date string, 
  shipping_date string, 
  pcb_sn string, 
  production_number string, 
  letv_part_number string, 
  plan_id string, 
  factory_part_number string, 
  sale_area string, 
  send_time string, 
  factory_delivery_time string, 
  factory string, 
  factory_delivery_id string, 
  activation_time string, 
  activation_halfhour_time string, 
  activation_halfhour_mobile string, 
  status string, 
  plan_create_username string, 
  plan_create_time string, 
  model string, 
  group_id string, 
  send_username string, 
  godown_entry_id string, 
  description string, 
  external_model string, 
  group_is_default string, 
  group_title string, 
  group_description string, 
  group_status string, 
  phone_model string, 
  phone_system string, 
  phone_color string, 
  phone_storage string, 
  order_id string, 
  order_province string, 
  order_city string, 
  order_district string, 
  order_address string, 
  order_status string, 
  order_way string, 
  order_create_date string, 
  order_pay_date string, 
  order_send_date string, 
  order_receive_date string, 
  order_user_id string, 
  order_receiver string, 
  order_receiver_mobile string, 
  order_storage string, 
  order_pm_name string, 
  order_pm_provider string, 
  order_pm_type string, 
  order_pm_description string, 
  order_type string, 
  quantity string, 
  activation_ip string, 
  activation_ip_country_code string, 
  activation_ip_country_name string, 
  activation_ip_region_code string, 
  activation_ip_region_name string, 
  activation_ip_province_code string, 
  activation_ip_province_name string, 
  activation_ip_city_code string, 
  activation_ip_city_name string, 
  activation_ip_isp string, 
  activation_halfhour_ip string, 
  activation_halfhour_ip_country_code string, 
  activation_halfhour_ip_country_name string, 
  activation_halfhour_ip_region_code string, 
  activation_halfhour_ip_region_name string, 
  activation_halfhour_ip_province_code string, 
  activation_halfhour_ip_province_name string, 
  activation_halfhour_ip_city_code string, 
  activation_halfhour_ip_city_name string, 
  activation_halfhour_ip_isp string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_source_day'
TBLPROPERTIES (
  'numPartitions'='77', 
  'numFiles'='85', 
  'last_modified_by'='yaoxiaofen', 
  'last_modified_time'='1438694452', 
  'transient_lastDdlTime'='1438694452', 
  'numRows'='0', 
  'totalSize'='3797426768', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_phone_tags_kpi_f(
  app_name string, 
  add_tag_count string, 
  accu_tag_count string, 
  add_uid_count string, 
  accu_uid_count string)
PARTITIONED BY ( 
  dt int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_phone_tags_kpi_f'
TBLPROPERTIES (
  'numPartitions'='122', 
  'numFiles'='122', 
  'transient_lastDdlTime'='1447957443', 
  'numRows'='0', 
  'totalSize'='34511', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_phone_tags_kpi_s(
  app_name string, 
  tag_order string, 
  tag_id string, 
  uid_count string)
PARTITIONED BY ( 
  dt int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_phone_tags_kpi_s'
TBLPROPERTIES (
  'numPartitions'='122', 
  'numFiles'='122', 
  'transient_lastDdlTime'='1447957539', 
  'numRows'='0', 
  'totalSize'='3796264', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_phone_tags_kpi_t(
  app_name string, 
  tag_order string, 
  tag_id string, 
  accu_uid_count string)
PARTITIONED BY ( 
  dt int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_phone_tags_kpi_t'
TBLPROPERTIES (
  'numPartitions'='120', 
  'numFiles'='120', 
  'transient_lastDdlTime'='1447957643', 
  'numRows'='0', 
  'totalSize'='22458312', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_phone_tags_user_day(
  letv_uid string, 
  app_name string, 
  tag_id string, 
  act_time string, 
  currt_status string)
PARTITIONED BY ( 
  dt int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_phone_tags_user_day'
TBLPROPERTIES (
  'numPartitions'='123', 
  'numFiles'='122', 
  'transient_lastDdlTime'='1447957374', 
  'numRows'='0', 
  'totalSize'='1987802531', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_sdk_phone_app_day(
  start_id string, 
  imei string, 
  current_time string, 
  app_name string, 
  app_version string, 
  app_store string, 
  send_time string, 
  letv_uid string, 
  app_run_id string, 
  start_from string, 
  ip string, 
  ip_country_code string, 
  ip_country_name string, 
  ip_region_code string, 
  ip_region_name string, 
  ip_province_code string, 
  ip_province_name string, 
  ip_city_code string, 
  ip_city_name string, 
  ip_isp string, 
  server_time string, 
  act_time string, 
  act_name string, 
  act_des string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_day'
TBLPROPERTIES (
  'numPartitions'='187', 
  'numFiles'='2553', 
  'transient_lastDdlTime'='1447966271', 
  'numRows'='0', 
  'totalSize'='499321972547', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_sdk_phone_app_imei_his_day(
  imei string, 
  app_name string, 
  first_active_date string, 
  first_app_version string, 
  last_active_date string, 
  last_app_version string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_imei_his_day'
TBLPROPERTIES (
  'numPartitions'='193', 
  'numFiles'='268', 
  'transient_lastDdlTime'='1447968385', 
  'numRows'='0', 
  'totalSize'='114245959893', 
  'rawDataSize'='0')
;CREATE  TABLE data_sum.sum_sdk_phone_app_usage_day(
  start_id string COMMENT '??ID', 
  imei string COMMENT 'IMEI?', 
  current_time string COMMENT '??????', 
  package_name string COMMENT '???', 
  app_version string COMMENT 'APP??', 
  send_time string COMMENT '??????', 
  letv_uid string COMMENT '???????', 
  app_run_id string COMMENT 'APP??ID', 
  start_from string COMMENT '??', 
  ip string COMMENT 'IP??', 
  ip_country_code string COMMENT '??IP?????', 
  ip_country_name string COMMENT '??IP?????', 
  ip_region_code string COMMENT '??IP?????', 
  ip_region_name string COMMENT '??IP?????', 
  ip_province_code string COMMENT '??IP???', 
  ip_province_name string COMMENT '??IP?????', 
  ip_city_code string COMMENT '??IP???', 
  ip_city_name string COMMENT '??IP???', 
  ip_isp string COMMENT 'ip??????', 
  server_time string COMMENT '???????', 
  open_time string COMMENT 'APP????', 
  closed_time string COMMENT 'APP????', 
  open_dur string COMMENT '????')
COMMENT 'SDK???APP????????'
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.SequenceFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_usage_day'
TBLPROPERTIES (
  'numPartitions'='85', 
  'numFiles'='9097', 
  'transient_lastDdlTime'='1447968444', 
  'numRows'='0', 
  'totalSize'='2634497801057', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_sdk_phone_app_user_his_day(
  letv_uid string, 
  app_name string, 
  first_active_date string, 
  first_app_version string, 
  last_active_date string, 
  last_app_version string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_app_user_his_day'
TBLPROPERTIES (
  'numPartitions'='193', 
  'numFiles'='222', 
  'transient_lastDdlTime'='1447999775', 
  'numRows'='0', 
  'totalSize'='69102016495', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_sdk_phone_beat_day(
  start_id string, 
  current_time string, 
  battery_status string, 
  send_time string, 
  ip string, 
  ip_country_code string, 
  ip_country_name string, 
  ip_region_code string, 
  ip_region_name string, 
  ip_province_code string, 
  ip_province_name string, 
  ip_city_code string, 
  ip_city_name string, 
  ip_isp string, 
  gps string, 
  gps_country string, 
  gps_province string, 
  gps_city string, 
  gps_county string, 
  gps_town string, 
  gps_street string, 
  gps_building string, 
  gps_other string, 
  network_type string, 
  mac string, 
  lived_time string, 
  wifi_ssid string, 
  letv_uid string, 
  imei string, 
  phone_no string, 
  isp string, 
  phone_network_type string, 
  imei_2 string, 
  phone_no_2 string, 
  isp_2 string, 
  phone_network_type_2 string, 
  props map<string,string>, 
  start_time string, 
  cp_version string, 
  build_version string, 
  product_vendor string, 
  product_model string, 
  is_root string, 
  first_active_date string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/data_sum.db/sum_sdk_phone_beat_day'
TBLPROPERTIES (
  'numPartitions'='195', 
  'numFiles'='320', 
  'last_modified_by'='jenkins', 
  'last_modified_time'='1432107737', 
  'transient_lastDdlTime'='1447965254', 
  'numRows'='0', 
  'totalSize'='42459272453', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_sdk_phone_env_day(
  start_id string, 
  current_time string, 
  start_time string, 
  send_time string, 
  product_vendor string, 
  build_version string, 
  product_model string, 
  hardeware_version string, 
  mac string, 
  os string, 
  is_root string, 
  cp_version string, 
  os_version string, 
  kernel_version string, 
  network_type string, 
  ip string, 
  ip_country_code string, 
  ip_country_name string, 
  ip_region_code string, 
  ip_region_name string, 
  ip_province_code string, 
  ip_province_name string, 
  ip_city_code string, 
  ip_city_name string, 
  ip_isp string, 
  gps string, 
  gps_country string, 
  gps_province string, 
  gps_city string, 
  gps_county string, 
  gps_town string, 
  gps_street string, 
  gps_building string, 
  gps_other string, 
  battery_status string, 
  device_id string, 
  letv_uid string, 
  imei string, 
  phone_no string, 
  isp string, 
  phone_network_type string, 
  imei_2 string, 
  phone_no_2 string, 
  isp_2 string, 
  phone_network_type_2 string, 
  props map<string,string>, 
  server_time string, 
  first_active_date string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_env_day'
TBLPROPERTIES (
  'numPartitions'='214', 
  'numFiles'='214', 
  'last_modified_by'='jenkins', 
  'last_modified_time'='1432034058', 
  'transient_lastDdlTime'='1447964122', 
  'numRows'='0', 
  'totalSize'='11428943403', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_sdk_phone_event_day(
  start_id string, 
  current_time string, 
  app_name string, 
  app_version string, 
  event_id string, 
  push_id string, 
  widget_id string, 
  result string, 
  send_time string, 
  letv_uid string, 
  app_run_id string, 
  package_name string, 
  imei string, 
  phone_no string, 
  isp string, 
  network_type string, 
  props map<string,string>, 
  ip string, 
  ip_country_code string, 
  ip_country_name string, 
  ip_region_code string, 
  ip_region_name string, 
  ip_province_code string, 
  ip_province_name string, 
  ip_city_code string, 
  ip_city_name string, 
  ip_isp string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_event_day'
TBLPROPERTIES (
  'numPartitions'='194', 
  'numFiles'='6146', 
  'last_modified_by'='jenkins', 
  'last_modified_time'='1431660404', 
  'transient_lastDdlTime'='1447965604', 
  'numRows'='0', 
  'totalSize'='725824175403', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_sdk_phone_imei_his_day(
  start_id string, 
  current_time string, 
  imei string, 
  server_time string, 
  mac string, 
  product_vendor string, 
  product_model string, 
  cp_version string, 
  build_version string, 
  is_root string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_imei_his_day_v2'
TBLPROPERTIES (
  'numPartitions'='188', 
  'numFiles'='379', 
  'last_modified_by'='jenkins', 
  'last_modified_time'='1432609298', 
  'transient_lastDdlTime'='1447963981', 
  'numRows'='0', 
  'totalSize'='9929039017', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_sdk_phone_imei_his_day_old(
  start_id string, 
  imei string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_imei_his_day'
TBLPROPERTIES (
  'numPartitions'='193', 
  'numFiles'='357', 
  'last_modified_by'='jenkins', 
  'last_modified_time'='1432609251', 
  'transient_lastDdlTime'='1447971055', 
  'numRows'='0', 
  'totalSize'='130073967512', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_sdk_phone_music_play_day(
  start_id string, 
  current_time string, 
  app_name string, 
  app_version string, 
  event_id string, 
  widget_id string, 
  send_time string, 
  letv_uid string, 
  app_run_id string, 
  song_id string, 
  album_id string, 
  network string, 
  recom_id string, 
  ip string, 
  ip_country_code string, 
  ip_country_name string, 
  ip_region_code string, 
  ip_region_name string, 
  ip_province_code string, 
  ip_province_name string, 
  ip_city_code string, 
  ip_city_name string, 
  ip_isp string, 
  imei string, 
  pt bigint, 
  props map<string,string>)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_music_play_day'
TBLPROPERTIES (
  'numPartitions'='185', 
  'numFiles'='7420', 
  'transient_lastDdlTime'='1448008149', 
  'numRows'='0', 
  'totalSize'='491962245932', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_sdk_phone_user_his_day(
  letv_uid string, 
  first_active_date string, 
  last_active_date string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_user_his_day'
TBLPROPERTIES (
  'numPartitions'='189', 
  'numFiles'='189', 
  'transient_lastDdlTime'='1447961197', 
  'numRows'='0', 
  'totalSize'='568825530', 
  'rawDataSize'='0')
;CREATE  TABLE data_sum.sum_sdk_phone_video_play_day(
  start_id string COMMENT '??ID', 
  start_time string COMMENT '????', 
  end_time string COMMENT '????', 
  play_id string COMMENT '????', 
  widget_id string COMMENT '??ID', 
  app_name string COMMENT '????', 
  app_version string COMMENT 'APP??', 
  app_run_id string COMMENT 'APP??ID', 
  vid string COMMENT '??ID', 
  pid string COMMENT '??ID', 
  cid string COMMENT '??ID', 
  push_id string COMMENT '??ID', 
  url string COMMENT '??url', 
  length string COMMENT '??', 
  play_type string COMMENT '????', 
  stream string COMMENT '??', 
  src string COMMENT '??', 
  letv_uid string COMMENT '???????', 
  station_id string COMMENT '??id', 
  live_id string COMMENT '??id', 
  user_type string COMMENT '????', 
  network_type string COMMENT '????', 
  ip string COMMENT 'IP??', 
  ip_country_code string COMMENT '??IP?????', 
  ip_country_name string COMMENT '??IP?????', 
  ip_region_code string COMMENT '??IP?????', 
  ip_region_name string COMMENT '??IP?????', 
  ip_province_code string COMMENT '??IP???', 
  ip_province_name string COMMENT '??IP?????', 
  ip_city_code string COMMENT '??IP???', 
  ip_city_name string COMMENT '??IP???', 
  ip_isp string COMMENT 'ip??????', 
  imei string COMMENT 'IMEI?', 
  phone_model string COMMENT '????', 
  vv int COMMENT '???', 
  cv int COMMENT '?????', 
  pt int COMMENT '????')
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_sdk_phone_video_play_day'
TBLPROPERTIES (
  'numPartitions'='109', 
  'numFiles'='431', 
  'transient_lastDdlTime'='1448006502', 
  'numRows'='0', 
  'totalSize'='178711346060', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_user_act_day(
  id string, 
  uid string, 
  country string, 
  area string, 
  province string, 
  city string, 
  p1 string, 
  p2 string, 
  p3 string, 
  cid string, 
  pid string, 
  vid string, 
  act_code string, 
  act_result string, 
  pcode string, 
  fl string, 
  wz string, 
  ch string, 
  fake string, 
  act_times bigint, 
  act_property map<string,string>)
PARTITIONED BY ( 
  dt string, 
  product string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_user_act_day'
TBLPROPERTIES (
  'numPartitions'='2836', 
  'numFiles'='172759', 
  'last_modified_by'='jenkins', 
  'last_modified_time'='1441782852', 
  'transient_lastDdlTime'='1447951321', 
  'numRows'='0', 
  'totalSize'='12770094541382', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_user_login_env_day(
  id string, 
  uid string, 
  ip string, 
  country string, 
  area string, 
  province string, 
  city string, 
  ref string, 
  pcode string, 
  p1 string, 
  p2 string, 
  p3 string, 
  min_t string, 
  max_t string, 
  nettype string, 
  os string, 
  os_v string, 
  app_v string, 
  brand string, 
  terminal_id string, 
  resolution string, 
  browser string, 
  ch string, 
  fake string, 
  login_times bigint, 
  model string, 
  cs string, 
  ssid string, 
  lo string, 
  la string)
PARTITIONED BY ( 
  dt string, 
  product string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_user_login_env_day'
TBLPROPERTIES (
  'numPartitions'='6140', 
  'numFiles'='19906', 
  'last_modified_by'='yaoxiaofen', 
  'last_modified_time'='1429585982', 
  'transient_lastDdlTime'='1447954305', 
  'numRows'='0', 
  'totalSize'='11925493600041', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_user_play_day(
  id string, 
  uid string, 
  country string, 
  area string, 
  province string, 
  city string, 
  p1 string, 
  p2 string, 
  p3 string, 
  cid string, 
  pid string, 
  vid string, 
  act string, 
  ch string, 
  playtype string, 
  videotype string, 
  stime string, 
  etime string, 
  pay string, 
  off string, 
  station string, 
  zid string, 
  liveid string, 
  fake string, 
  uuid string, 
  player_version string, 
  url string, 
  ref string, 
  pcode string, 
  v_name string, 
  v_type string, 
  v_type_value string, 
  v_tag string, 
  p_name string, 
  p_type string, 
  p_type_value string, 
  p_tag string, 
  c_name string, 
  is_homemade string, 
  film_base_type string, 
  v_area string, 
  v_area_name string, 
  pt bigint, 
  property string COMMENT 'Play Property')
PARTITIONED BY ( 
  dt string, 
  product string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_user_play_day'
TBLPROPERTIES (
  'numPartitions'='1176', 
  'numFiles'='273348', 
  'last_modified_by'='xiangtao', 
  'last_modified_time'='1416551659', 
  'transient_lastDdlTime'='1433081741', 
  'numRows'='0', 
  'totalSize'='145377627471058', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_user_play_summary_day(
  id string, 
  uid string, 
  p1 string, 
  p2 string, 
  p3 string, 
  cid string, 
  pid string, 
  vid string, 
  stime string, 
  etime string, 
  vv int, 
  cv int, 
  pt double, 
  od_vv int COMMENT '??vv', 
  od_cv int COMMENT '??cv', 
  od_pt int COMMENT '??pt', 
  live_vv int COMMENT '??vv', 
  live_cv int COMMENT '??cv', 
  live_pt int COMMENT '??pt', 
  ca_vv int COMMENT '??vv', 
  ca_cv int COMMENT '??cv', 
  ca_pt int COMMENT '??pt', 
  try_vv int COMMENT '??vv', 
  try_cv int COMMENT '??cv', 
  try_pt int COMMENT '??pt', 
  pay_vv int COMMENT '??vv', 
  pay_cv int COMMENT '??cv', 
  pay_pt int COMMENT '??pt', 
  off_vv int COMMENT '????vv', 
  off_cv int COMMENT '????cv', 
  off_pt int COMMENT '????pt', 
  drag_ts int COMMENT '????', 
  drag_a_ts int COMMENT '??????', 
  drag_b_ts int COMMENT '??????', 
  block_ts int COMMENT '????')
PARTITIONED BY ( 
  dt string, 
  product string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_user_play_summary_day'
TBLPROPERTIES (
  'numPartitions'='2124', 
  'numFiles'='184652', 
  'last_modified_by'='jenkins', 
  'last_modified_time'='1441782631', 
  'transient_lastDdlTime'='1447952971', 
  'numRows'='0', 
  'totalSize'='7393208347631', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_user_pv_day(
  id string, 
  uid string, 
  country string, 
  area string, 
  province string, 
  city string, 
  p1 string, 
  p2 string, 
  p3 string, 
  ct string, 
  ch string, 
  ref string, 
  rcid string, 
  wordkey string, 
  cid string, 
  pid string, 
  vid string, 
  pcode string, 
  fake string, 
  pv bigint, 
  ip string, 
  ilu string, 
  schoolname string, 
  zid string, 
  cur_url string)
PARTITIONED BY ( 
  dt string, 
  product string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_user_pv_day'
TBLPROPERTIES (
  'numPartitions'='4763', 
  'numFiles'='21327', 
  'last_modified_by'='yaoxiaofen', 
  'last_modified_time'='1432622634', 
  'transient_lastDdlTime'='1447953968', 
  'numRows'='0', 
  'totalSize'='10659405261359', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_user_query_day(
  id string, 
  uid string, 
  ip string, 
  country string, 
  area string, 
  province string, 
  city string, 
  p1 string, 
  p2 string, 
  p3 string, 
  ch string, 
  key string, 
  searchid string, 
  type string, 
  position string, 
  click string, 
  fake string)
PARTITIONED BY ( 
  dt string, 
  product string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_user_query_day'
TBLPROPERTIES (
  'numPartitions'='3110', 
  'numFiles'='3748', 
  'last_modified_by'='jenkins', 
  'last_modified_time'='1411636735', 
  'transient_lastDdlTime'='1436222810', 
  'numRows'='0', 
  'totalSize'='506381686742', 
  'rawDataSize'='0')
;CREATE EXTERNAL TABLE data_sum.sum_user_uuid_play_day(
  id string, 
  uid string, 
  uuid string, 
  p1 string, 
  p2 string, 
  p3 string, 
  vid string, 
  pid string, 
  cid string, 
  ch string, 
  playtype string, 
  stime string, 
  etime string, 
  pay string, 
  off string, 
  station string, 
  zid string, 
  liveid string, 
  fake string, 
  player_version string, 
  url string, 
  ref string, 
  pcode string, 
  launch bigint, 
  init bigint, 
  gslb bigint, 
  cload bigint, 
  play bigint, 
  jump bigint, 
  time bigint, 
  pt bigint, 
  drag bigint, 
  drag_a_ts bigint, 
  drag_a_dur bigint, 
  drag_b_ts bigint, 
  drag_b_dur bigint, 
  block bigint, 
  play_end bigint, 
  cp bigint, 
  uuid_vv bigint, 
  uuid_cv bigint, 
  ip string, 
  country string, 
  area string, 
  province string, 
  city string, 
  flow bigint, 
  app_version string)
PARTITIONED BY ( 
  dt string, 
  product string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/sum_user_uuid_play_day'
TBLPROPERTIES (
  'numPartitions'='3440', 
  'numFiles'='472852', 
  'last_modified_by'='jenkins', 
  'last_modified_time'='1441783758', 
  'transient_lastDdlTime'='1447956038', 
  'numRows'='0', 
  'totalSize'='44007220687704', 
  'rawDataSize'='0')

