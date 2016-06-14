--############################################## 
--# DWD ddl create statement.
--# 
--# @author Hefei Li
--# @since Dec. 11, 2015
--##############################################

use dwd;
CREATE EXTERNAL TABLE `dwd.devicetrace`(
  `mac` string, 
  `boxgroup` string, 
  `mode` string, 
  `country` string, 
  `province` string, 
  `district` string, 
  `isp` string, 
  `osver` string, 
  `ts` string, 
  `ip` string, 
  `sn` string, 
  `model` string, 
  `osvern` string, 
  `extvendor` string, 
  `extbrand` string)
PARTITIONED BY ( 
  `area` string, 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/devicetrace'
TBLPROPERTIES (
  'last_modified_by'='liufu', 
  'last_modified_time'='1447299111', 
  'transient_lastDdlTime'='1447299111')
;
CREATE EXTERNAL TABLE `dwd.dwd_afs_mall_order_shipment_all`(
  `shipment_id` string COMMENT '??id', 
  `order_id` string COMMENT '??id', 
  `shipment_name` string COMMENT '????', 
  `shipment_status` string COMMENT '????', 
  `bills_no` string COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `ec_name` string, 
  `ec_id` string, 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_afs_mall_order_shipment_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449660394')
;
CREATE EXTERNAL TABLE `dwd.dwd_afs_mall_refund_order_his`(
  `apply_id` string, 
  `order_id` string COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `return_type` int, 
  `return_status` int, 
  `refund_method` int, 
  `refund_amount` double COMMENT '????', 
  `refund_bank` string, 
  `refund_bank_province` string, 
  `refund_bank_province_id` int, 
  `refund_bank_city` string, 
  `refund_bank_city_id` int, 
  `branch_bank` string, 
  `card_number` string, 
  `account_person` string, 
  `apply_person` string, 
  `custom_service_checker` string, 
  `after_sale_checker` string, 
  `warehouse_checker` string, 
  `delivery_checker` string, 
  `custom_service_check_time` string COMMENT '??????', 
  `after_sale_check_time` string COMMENT '??????', 
  `warehouse_check_time` string COMMENT '??????', 
  `delivery_check_time` string COMMENT '??????', 
  `sign_time` string, 
  `sign_person` string, 
  `warehouse` string, 
  `apply_time` string COMMENT '????', 
  `service_time` string COMMENT '??????', 
  `contact_person` string, 
  `contact_phone` string, 
  `refund_address` string, 
  `refund_province` string, 
  `refund_province_id` int, 
  `refund_city` string, 
  `refund_city_id` int, 
  `refund_town` string, 
  `refund_town_id` int, 
  `send_address` string, 
  `send_province` string, 
  `send_province_id` int, 
  `send_city` string, 
  `send_city_id` int, 
  `send_town` string, 
  `send_town_id` int, 
  `crm_number` string, 
  `purchase_channel` string, 
  `discription` string, 
  `apply_type` int, 
  `remark` string COMMENT '??', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `refund_quantity` int, 
  `shopping_fee` double, 
  `shopping_amount` double, 
  `packing_charges` double, 
  `depreciation_fee` double COMMENT '????', 
  `tax` double, 
  `deduction` double, 
  `order_way` int COMMENT '????', 
  `financial_no` string COMMENT '????', 
  `parent_order_id` string COMMENT '???id', 
  `fault_description` string, 
  `identify_result` string, 
  `is_quality` string, 
  `ec_id` string, 
  `ec_no` string, 
  `ec_name` string, 
  `wms_status` int, 
  `refund_order_type` int, 
  `product_back_type` int, 
  `shipping_compensate_status` int, 
  `fill_sendinfo_status` int, 
  `apply_id_child` string, 
  `after_sale_sendtime` string, 
  `after_sale_receipttime` string, 
  `after_sale_result` string, 
  `freight_amount` double, 
  `quotation_amount` double, 
  `send_company` string, 
  `send_waybill` string, 
  `client_company` string, 
  `client_waybill` string, 
  `refund_reason` string, 
  `custom_service_check_result` int, 
  `pay_user_type` int, 
  `alipay_user_id` string, 
  `alipay_user_name` string, 
  `change_product` int, 
  `contract_type` tinyint COMMENT '????', 
  `after_sale_discription` string, 
  `start_date` string COMMENT '????')
PARTITIONED BY ( 
  `country_code` string, 
  `end_date` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_afs_mall_refund_order_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449644349')
;
CREATE EXTERNAL TABLE `dwd.dwd_afs_mall_refund_order_item_his`(
  `refund_item_id` int, 
  `apply_id` string, 
  `order_id` string COMMENT '??id', 
  `product_id` string COMMENT '??id', 
  `product_number` bigint, 
  `product_name` string COMMENT '????', 
  `original_price` double COMMENT '??', 
  `sale_price` double COMMENT '????', 
  `order_quantity` int, 
  `refund_quantity` int, 
  `exchange_quantity` int, 
  `mac_address` string, 
  `installation` int, 
  `remark` string COMMENT '??', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `install_quantity` int, 
  `is_wall` int, 
  `is_letv_pylons` int, 
  `suit_id` bigint, 
  `product_code` string COMMENT '????', 
  `order_item_id` string COMMENT '????id', 
  `coupon_amount` double COMMENT '?????', 
  `sale_amount` double, 
  `sn_no` string, 
  `new_sn_no` string, 
  `wh_entry_quantity` int, 
  `cus_service_quantity` int, 
  `wms_product_type` string, 
  `wms_product_type_name` string, 
  `product_level1_type` string COMMENT '??????', 
  `product_level2_type` string COMMENT '??????', 
  `product_level3_type` string COMMENT '??????', 
  `is_required` int COMMENT '????', 
  `is_main` int COMMENT '?????', 
  `imei` string COMMENT 'IMEI?', 
  `new_imei` string, 
  `start_date` string COMMENT '????')
PARTITIONED BY ( 
  `country_code` string, 
  `end_date` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_afs_mall_refund_order_item_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449644349')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_letv_vip_order_all`(
  `order_id` string, 
  `order_name` string, 
  `user_name` string, 
  `order_amount` string, 
  `order_status` string, 
  `effective_time` string, 
  `expire_time` string, 
  `order_type` string, 
  `aidname` string, 
  `orderfrom` string, 
  `aid2` string, 
  `paytime` string, 
  `userip` string, 
  `paychannel` string, 
  `suborderfrom` string, 
  `letv_uid` string, 
  `load_time` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_letv_vip_order_all'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='13', 
  'numRows'='125602459', 
  'rawDataSize'='24925383138', 
  'totalSize'='6593190492', 
  'transient_lastDdlTime'='1449771970')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_mall_appointment_user_all`(
  `au_id` string COMMENT '????id', 
  `rush_id` int COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `mobile` string COMMENT '???', 
  `email` string COMMENT '????', 
  `user_name` string COMMENT '????', 
  `appointment_num` int COMMENT '????', 
  `status` string COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `is_showlove` int COMMENT '??????', 
  `remark` string COMMENT '??', 
  `approve_status` tinyint COMMENT '????', 
  `approve_man` string COMMENT '???', 
  `approve_time` string COMMENT '????', 
  `cps_id` string COMMENT 'cps_id', 
  `way_source` tinyint COMMENT '????', 
  `user_ip` string COMMENT '??ip', 
  `verify_mobile` string COMMENT '???????', 
  `score` string COMMENT 'score', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_mall_appointment_user_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449630730')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_mall_appointment_user_his`(
  `au_id` string COMMENT '????id', 
  `rush_id` int COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `mobile` string COMMENT '???', 
  `email` string COMMENT '????', 
  `user_name` string COMMENT '????', 
  `appointment_num` int COMMENT '????', 
  `status` string COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `is_showlove` int COMMENT '??????', 
  `remark` string COMMENT '??', 
  `approve_status` tinyint COMMENT '????', 
  `approve_man` string COMMENT '???', 
  `approve_time` string COMMENT '????', 
  `cps_id` string COMMENT 'cps_id', 
  `way_source` tinyint COMMENT '????', 
  `user_ip` string COMMENT '??ip', 
  `verify_mobile` string COMMENT '???????', 
  `score` string COMMENT 'score', 
  `start_date` string COMMENT '????')
PARTITIONED BY ( 
  `country_code` string, 
  `end_date` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_mall_appointment_user_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756199')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_mall_cps_all`(
  `cps_id` string COMMENT 'cps_id', 
  `c_cps_id` string COMMENT 'c_cps_id', 
  `cps_name` string COMMENT 'cps??', 
  `cps_code` string COMMENT 'cps_code', 
  `user_id` bigint COMMENT '??id', 
  `create_time` string COMMENT '????', 
  `effective_time` string COMMENT '????', 
  `cps_cancel_flag` string COMMENT 'cps????', 
  `cps_media` string COMMENT 'cps??', 
  `cps_channel` string COMMENT 'cps??', 
  `contract` string COMMENT '??', 
  `start_date` string COMMENT '????', 
  `end_date` string COMMENT '????', 
  `level3_class` string COMMENT '????', 
  `level4_class` string COMMENT '????', 
  `level5_class` string COMMENT '????', 
  `level6_class` string COMMENT '????', 
  `level7_class` string COMMENT '????', 
  `level8_class` string COMMENT '????', 
  `level9_class` string COMMENT '????', 
  `update_user` bigint COMMENT '????', 
  `update_time` string COMMENT '????', 
  `w_cps_id` string COMMENT 'w_cps_id', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_mall_cps_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448956778')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_mall_order_his`(
  `order_id` string COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `order_status_id` int COMMENT '????id', 
  `order_status_name` string COMMENT '??????', 
  `storage_id` int COMMENT '??id', 
  `receiver` string COMMENT '???', 
  `receiver_mobile` string COMMENT '???????', 
  `receiver_telphone` string COMMENT '???????', 
  `receiver_country_id` int COMMENT '?????id', 
  `receiver_province_id` int COMMENT '?????id', 
  `receiver_city_id` int COMMENT '?????id', 
  `receiver_county_id` int COMMENT '????id', 
  `receiver_zip_code` string COMMENT '???????', 
  `receiver_address` string COMMENT '?????', 
  `address_arrive_flag` tinyint COMMENT '??????', 
  `email` string COMMENT '????', 
  `weibo` string COMMENT '??', 
  `weixin` string COMMENT '??', 
  `payment_method_id` int COMMENT '????id', 
  `payment_method_name` string COMMENT '??????', 
  `payment_method_group` int COMMENT '??????', 
  `payment_method_provider` string COMMENT '???????', 
  `payment_method_type` string COMMENT '??????', 
  `channel_id` bigint COMMENT '??id', 
  `channel_name` string COMMENT '????', 
  `channel_category` string COMMENT '????', 
  `agency_order_amount` double COMMENT '???????', 
  `agency_paid_amount` double COMMENT '???????', 
  `order_amount` double COMMENT '????', 
  `product_amount` double COMMENT '????', 
  `discount_amount` double COMMENT '????', 
  `shipping_fee` double COMMENT '??', 
  `paid_amount` double COMMENT '????', 
  `refund_amount` double COMMENT '????', 
  `shipping_option` int COMMENT '????', 
  `shipping_phone_confirm` int COMMENT '?????????', 
  `cod_method` int COMMENT '??????', 
  `is_wjbank` tinyint COMMENT '??????????', 
  `shipping_method_id` int COMMENT '????', 
  `order_desc` string COMMENT '????', 
  `extra_message` string COMMENT '????', 
  `split_package` tinyint COMMENT '????', 
  `is_invoice` tinyint COMMENT '??????', 
  `invoice_title` string COMMENT '????', 
  `invoice_type` string COMMENT '????', 
  `invoice_cotent` int COMMENT '????', 
  `order_way` int COMMENT '????', 
  `order_way_name` string COMMENT '??????', 
  `order_way_type` int COMMENT '??????', 
  `order_type` int COMMENT '????', 
  `order_type_name` string COMMENT '??????', 
  `promotion_id` string COMMENT '??id', 
  `promotion_price` double COMMENT '????', 
  `promotion_points` double COMMENT '????', 
  `promotion_points_send` int COMMENT '????????', 
  `promotion_coupons` double COMMENT '????', 
  `promotion_coupons_send` int COMMENT '????????', 
  `promotion_free_shipping` int COMMENT '?????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `reject_status` tinyint COMMENT '????', 
  `reject_time` string COMMENT '????', 
  `on_amount` double COMMENT '????', 
  `deliver_time` string COMMENT '????', 
  `user_login_type` int COMMENT '??????', 
  `is_energy_saving` smallint COMMENT '??????', 
  `es_amount` double COMMENT '??????', 
  `energy_subs_bm` tinyint COMMENT '????????', 
  `energy_subs_name` string COMMENT '??????', 
  `energy_subs_cert` string COMMENT '????????', 
  `order_arrival_time` string COMMENT '??????', 
  `out_seller_id` int COMMENT '????id', 
  `produce_status` tinyint COMMENT '????', 
  `rush_id` int COMMENT '??id', 
  `lmcode` string COMMENT '??', 
  `groupid` int COMMENT 'groupid', 
  `is_send_gift` int COMMENT '??????', 
  `rush_time` string COMMENT '????', 
  `is_paid` int COMMENT '?????', 
  `pay_time` string COMMENT '????', 
  `user_buyed_flag` int COMMENT '??????', 
  `buyed_user` tinyint COMMENT '??????', 
  `out_order_id` string COMMENT '????id', 
  `oa_apply_no` string COMMENT 'oa???', 
  `s_mobile` string COMMENT 's_mobile', 
  `s_telphone` string COMMENT 's_telphone', 
  `valid_mobile` string COMMENT '??????????', 
  `valid_name` string COMMENT '??????', 
  `virtual_transportation` tinyint COMMENT '????', 
  `apply_refund_status` tinyint COMMENT '??????', 
  `financial_no` string COMMENT '????', 
  `contract_no` string COMMENT '????', 
  `sales_dept` tinyint COMMENT '????', 
  `sales_dept_name` string COMMENT '??????', 
  `bills_no` string COMMENT '????', 
  `presale_delivery_start_time` string COMMENT '????????', 
  `presale_delivery_cycle_type` int COMMENT '????????', 
  `presale_delivery_end_time` string COMMENT '????????', 
  `is_handled_reward` boolean COMMENT '???????', 
  `rebates_amount` double COMMENT '????', 
  `is_diy_order` boolean COMMENT '??DIY??', 
  `alipay_hb_amount` double COMMENT '???????', 
  `invoice_comments` string COMMENT '????', 
  `invoice_shipping_fee` double COMMENT '??????', 
  `invoice_amount` double COMMENT '????', 
  `company_id` int COMMENT '??id', 
  `store_id` int COMMENT '??id', 
  `split_flag` tinyint COMMENT '????', 
  `parent_order_id` string COMMENT '???id', 
  `suite_type` tinyint COMMENT '????', 
  `coupon_amount` double COMMENT '?????', 
  `contract_type` tinyint COMMENT '????', 
  `associate_id` string COMMENT 'associate_id', 
  `app_cpsid` string COMMENT '????', 
  `order_channel` string COMMENT '????', 
  `order_buss_flag` int, 
  `speedup_fee` double COMMENT '?????', 
  `physical_storage_id` int COMMENT '????id', 
  `order_twolevel_type` int COMMENT '??????', 
  `shipment_id` string COMMENT '??id', 
  `shipment_name` string COMMENT '????', 
  `ec_name` string, 
  `ec_id` string, 
  `start_date` string COMMENT '????')
PARTITIONED BY ( 
  `country_code` string COMMENT '????', 
  `end_date` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_mall_order_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449450415')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_mall_order_item_his`(
  `order_item_id` int COMMENT '????id', 
  `order_id` string COMMENT '??id', 
  `shipment_id` string COMMENT '??id', 
  `shipment_name` string COMMENT '????', 
  `product_id` string COMMENT '??id', 
  `product_name` string COMMENT '????', 
  `product_stat_class` string COMMENT '??????', 
  `productgroupno` string COMMENT '?????', 
  `productmodel` string COMMENT '????', 
  `p_skuname` string COMMENT '???_SKU??', 
  `s_skuname` string COMMENT '???_SKU??', 
  `agency_product_price` double COMMENT '???????', 
  `product_price` double COMMENT '????', 
  `final_price` double COMMENT '????', 
  `promotion_id` string COMMENT '??id', 
  `promotion_subtype` int COMMENT '?????', 
  `promotion_source` string COMMENT '????', 
  `discount` double COMMENT '??', 
  `quantity_in_group` int COMMENT '???????', 
  `quantity` int COMMENT '????', 
  `fav_amount` double COMMENT '????', 
  `points` int COMMENT '??', 
  `points_send` int COMMENT '??????', 
  `coupons` int COMMENT '????', 
  `coupons_send` int COMMENT '??????', 
  `shipping_fee` double COMMENT '??', 
  `coupon_amount` double COMMENT '?????', 
  `is_gift` int COMMENT '????', 
  `is_virtual` tinyint COMMENT '??????', 
  `show_flag` tinyint COMMENT '????', 
  `status` string COMMENT '????', 
  `is_main` int COMMENT '?????', 
  `is_major` int COMMENT '??????', 
  `factory_part_number` string COMMENT '????', 
  `factory` string COMMENT '????', 
  `model` string COMMENT '??', 
  `description` string COMMENT '??', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `cost_price` double COMMENT '????', 
  `is_energy_saving` smallint COMMENT '??????', 
  `es_amount` double COMMENT '??????', 
  `group_product_id` int COMMENT '????id', 
  `product_code` string COMMENT '????', 
  `product_level1_type` string COMMENT '??????', 
  `product_level1_name` string COMMENT '????????', 
  `product_level2_type` string COMMENT '??????', 
  `product_level2_name` string COMMENT '????????', 
  `product_level3_type` string COMMENT '??????', 
  `product_level3_name` string COMMENT '????????', 
  `cupon_number` string COMMENT '?????', 
  `coupon_divide` double COMMENT '???????', 
  `invoice_product_price` double COMMENT '??????', 
  `is_required` int COMMENT '????', 
  `sub_order_id` string COMMENT '???id', 
  `seller_id` int COMMENT '??id', 
  `storage_id` int COMMENT '??id', 
  `order_type` int COMMENT '????', 
  `suite_type` tinyint COMMENT '????', 
  `real_promotion_id` int COMMENT '????id', 
  `real_promotion_type` int COMMENT '??????', 
  `contract_type` tinyint COMMENT '????', 
  `original_price` double COMMENT '??', 
  `rush_id` int COMMENT '??id', 
  `physical_storage_id` int COMMENT '????id', 
  `order_twolevel_type` int COMMENT '??????', 
  `bills_no` string COMMENT '????', 
  `ec_name` string, 
  `ec_id` string, 
  `start_date` string COMMENT '????')
PARTITIONED BY ( 
  `country_code` string, 
  `end_date` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_mall_order_item_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449450416')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_mall_order_tx_log_all`(
  `order_transaction_id` int, 
  `order_id` string COMMENT '??id', 
  `transaction_operator` string, 
  `operate_type` int, 
  `log_content` string, 
  `log_type` string, 
  `transaction_desc` string COMMENT '????', 
  `operate_time` string COMMENT '????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_mall_order_tx_log_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449630733')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_mall_order_tx_log_day`(
  `order_transaction_id` int, 
  `order_id` string COMMENT '??id', 
  `transaction_operator` string, 
  `operate_type` int, 
  `log_content` string, 
  `log_type` string, 
  `transaction_desc` string COMMENT '????', 
  `operate_time` string COMMENT '????')
PARTITIONED BY ( 
  `dt` string COMMENT '????', 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_mall_order_tx_log_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756202')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_mall_product_sn_all`(
  `order_id` string COMMENT '??id', 
  `product_code` string COMMENT '????', 
  `product_name` string COMMENT '????', 
  `sn` string, 
  `product_model` string COMMENT '????', 
  `config_code` string, 
  `mac` string COMMENT '?????? mac ??', 
  `product_group` string, 
  `factory_part_number` string COMMENT '????', 
  `factory` string COMMENT '????', 
  `model` string COMMENT '??', 
  `description` string COMMENT '??', 
  `create_time` string COMMENT '????', 
  `create_user` bigint COMMENT '????', 
  `update_time` string COMMENT '????', 
  `update_user` bigint COMMENT '????', 
  `is_delete` tinyint COMMENT '????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_mall_product_sn_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449630731')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_mall_product_sn_his`(
  `order_id` string COMMENT '??id', 
  `product_code` string COMMENT '????', 
  `product_name` string COMMENT '????', 
  `sn` string, 
  `product_model` string COMMENT '????', 
  `config_code` string, 
  `mac` string COMMENT '?????? mac ??', 
  `product_group` string, 
  `factory_part_number` string COMMENT '????', 
  `factory` string COMMENT '????', 
  `model` string COMMENT '??', 
  `description` string COMMENT '??', 
  `create_time` string COMMENT '????', 
  `create_user` bigint COMMENT '????', 
  `update_time` string COMMENT '????', 
  `update_user` bigint COMMENT '????', 
  `is_delete` tinyint COMMENT '????', 
  `start_date` string COMMENT '????')
PARTITIONED BY ( 
  `country_code` string, 
  `end_date` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_mall_product_sn_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448956776')
;
CREATE EXTERNAL TABLE `dwd.dwd_agt_ott_mobile_order_sn_all`(
  `order_num` string COMMENT '????', 
  `sync_order_num` string COMMENT '?????', 
  `letv_order_num` string COMMENT '?????', 
  `channel_id` bigint COMMENT '??id', 
  `channel_name` string COMMENT '????', 
  `channel_code` string, 
  `channel_category` string COMMENT '????', 
  `channel_type` string COMMENT '????', 
  `channel_level` string COMMENT '????', 
  `suit_type` string, 
  `order_amount` double COMMENT '????', 
  `invoice_title` string COMMENT '????', 
  `sync_success_time` string COMMENT '??????', 
  `order_type` int COMMENT '????', 
  `cust_mobile` string, 
  `cust_phone` string COMMENT '?????', 
  `province_code` string COMMENT '????', 
  `province_name` string COMMENT '????', 
  `city_code` string COMMENT '????', 
  `city_name` string COMMENT '????', 
  `county_code` string COMMENT '???', 
  `county_name` string COMMENT '???', 
  `address` string COMMENT '??', 
  `product_sn` string COMMENT '?????', 
  `product_model` string COMMENT '????', 
  `product_group` string, 
  `product_mac` string COMMENT '????', 
  `order_way_type` int COMMENT '??????', 
  `order_way_name` string COMMENT '??????', 
  `order_channel` string COMMENT '????', 
  `load_time` string COMMENT '??????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_agt_ott_mobile_order_sn_all'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='1867357', 
  'rawDataSize'='595669890', 
  'totalSize'='7671693', 
  'transient_lastDdlTime'='1449796418')
;
CREATE EXTERNAL TABLE `dwd.dwd_cont_lh_ca_prog_list_all`(
  `prog_id` string COMMENT '??id', 
  `prog_name` string COMMENT '????', 
  `start_time` string COMMENT '????', 
  `end_time` string COMMENT '????', 
  `prog_type` string COMMENT '????', 
  `prog_channel_id` string COMMENT '????id', 
  `prog_channel_name` string COMMENT '??????', 
  `prog_channel_en_name` string COMMENT '????????', 
  `demand_id` int COMMENT '???????id', 
  `channel_dpi` string COMMENT '?????', 
  `channel_clarity` string COMMENT '?????', 
  `is_3d` int COMMENT '??3D??', 
  `is_4k` int COMMENT '??4K??', 
  `pid` string COMMENT '??ID', 
  `vid` string COMMENT '??ID', 
  `vid_corr_cid` string COMMENT '??????id', 
  `vid_corr_sub_cid` string COMMENT '???????id', 
  `video_type` string COMMENT '????', 
  `source_id` int COMMENT '??????', 
  `live_channel_id` bigint COMMENT '????id', 
  `live_id` string COMMENT '??id', 
  `belong_area` string COMMENT '??????', 
  `prog_corr_cid` string COMMENT '??????id', 
  `load_time` string COMMENT '??????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_cont_lh_ca_prog_list_all'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='9571008', 
  'rawDataSize'='1609877904', 
  'totalSize'='273031604', 
  'transient_lastDdlTime'='1449768886')
;
CREATE EXTERNAL TABLE `dwd.dwd_cont_lh_channel_all`(
  `prog_channel_id` string COMMENT '????id', 
  `prog_channel_name` string COMMENT '??????', 
  `prog_channel_en_name` string COMMENT '????????', 
  `start_time` string COMMENT '????', 
  `end_time` string COMMENT '????', 
  `is_used` int COMMENT '?????', 
  `belong_area` string COMMENT '??????', 
  `belong_brand` int COMMENT '????', 
  `demand_id` int COMMENT '???????id', 
  `source_id` int COMMENT '??????', 
  `channel_class` string COMMENT '????', 
  `channel_group` string COMMENT '????', 
  `numeric_key` string COMMENT '???', 
  `order_no` string COMMENT '??', 
  `cibn_chnl_name` string COMMENT '??????', 
  `is_ott_online` int COMMENT 'OTT????', 
  `is_rom_online` int COMMENT '???????', 
  `is_tv_online` int COMMENT '???TV???', 
  `is_mobile_online` int COMMENT '???????', 
  `is_boxtv_online` int COMMENT '??????TV???', 
  `is_boxrom_online` int COMMENT '???????????', 
  `is_json_online` int COMMENT '??json??', 
  `is_pc_online` int COMMENT '???PC???', 
  `is_test` int COMMENT '????', 
  `channel_dpi` string COMMENT '?????', 
  `channel_clarity` string COMMENT '?????', 
  `is_3d` int COMMENT '??3D??', 
  `is_4k` int COMMENT '??4K??', 
  `is_child_lock` int COMMENT '???????', 
  `is_recommend` int COMMENT '????', 
  `is_pay` string COMMENT '????', 
  `copyright` string COMMENT '????', 
  `src_id` int COMMENT '????id', 
  `channel_no` string COMMENT '???', 
  `cid` string COMMENT '??ID', 
  `load_time` string COMMENT '??????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_cont_lh_channel_all'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='1149', 
  'rawDataSize'='130776', 
  'totalSize'='30993', 
  'transient_lastDdlTime'='1449768282')
;
CREATE EXTERNAL TABLE `dwd.dwd_cont_lh_live_prog_list_all`(
  `live_id` string COMMENT '??id', 
  `prog_name` string COMMENT '????', 
  `start_time` string COMMENT '????', 
  `end_time` string COMMENT '????', 
  `prog_channel_id` string COMMENT '????id', 
  `prog_channel_name` string COMMENT '??????', 
  `prog_channel_en_name` string COMMENT '????????', 
  `demand_id` int COMMENT '???????id', 
  `channel_dpi` string COMMENT '?????', 
  `channel_clarity` string COMMENT '?????', 
  `is_3d` int COMMENT '??3D??', 
  `is_4k` int COMMENT '??4K??', 
  `live_hall_type` string COMMENT '??????', 
  `pid` string COMMENT '??ID', 
  `vid` string COMMENT '??ID', 
  `vid_corr_cid` string COMMENT '??????id', 
  `vid_corr_sub_cid` string COMMENT '???????id', 
  `video_type` string COMMENT '????', 
  `source_id` int COMMENT '??????', 
  `select_id` string COMMENT '???????id', 
  `stream_type` string COMMENT '???????', 
  `belong_area` string COMMENT '??????', 
  `live_corr_cid` string COMMENT '??????id', 
  `load_time` string COMMENT '??????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_cont_lh_live_prog_list_all'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='16366', 
  'rawDataSize'='2926418', 
  'totalSize'='434648', 
  'transient_lastDdlTime'='1449768397')
;
CREATE EXTERNAL TABLE `dwd.dwd_fin_mall_online_order_refund_all`(
  `payment_id` bigint COMMENT '??id', 
  `refund_status` string COMMENT '????', 
  `order_id` string COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `payment_method_id` int COMMENT '????id', 
  `request_amount` double COMMENT '????', 
  `refund_amount` double COMMENT '????', 
  `generate_time` string COMMENT '????', 
  `refund_time` string COMMENT '????', 
  `operate_time` string COMMENT '????', 
  `failed_reason` string COMMENT '????', 
  `retry_count` int COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `order_refund_id` bigint COMMENT '????id', 
  `payment_plan_id` bigint COMMENT '????id', 
  `payment_execution_id` bigint COMMENT '????id', 
  `refund_source_id` string COMMENT '????id', 
  `refund_method` int, 
  `operate_status` string COMMENT '????', 
  `paypal_seq_no` string COMMENT 'paypal???', 
  `paypal_amount` double COMMENT 'paypal??', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_fin_mall_online_order_refund_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449630732')
;
CREATE EXTERNAL TABLE `dwd.dwd_fin_mall_online_payment_all`(
  `payment_id` bigint COMMENT '??id', 
  `maket_place_id` string COMMENT 'maket_place_id', 
  `response_status` string COMMENT '????', 
  `sales_type` string COMMENT '????', 
  `sales_amount` double COMMENT '????', 
  `order_id` string COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `payment_method_id` int COMMENT '????id', 
  `request_amount` double COMMENT '????', 
  `arrive_amount` double COMMENT '????', 
  `generate_time` string COMMENT '????', 
  `arrival_time` string COMMENT '????', 
  `operate_time` string COMMENT '????', 
  `failed_reason` string COMMENT '????', 
  `retry_count` int COMMENT '????', 
  `trade_no` string COMMENT 'trade_no', 
  `inputer` string COMMENT 'inputer', 
  `online_response` string COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `online_transeq` string COMMENT 'online_transeq', 
  `online_ordernumber` string COMMENT 'online_ordernumber', 
  `paypal_seq_no` string COMMENT 'paypal???', 
  `paypal_amount` double COMMENT 'paypal??', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_fin_mall_online_payment_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449630732')
;
CREATE EXTERNAL TABLE `dwd.dwd_fin_mall_online_payment_his`(
  `payment_id` bigint COMMENT '??id', 
  `maket_place_id` string COMMENT 'maket_place_id', 
  `response_status` string COMMENT '????', 
  `sales_type` string COMMENT '????', 
  `sales_amount` double COMMENT '????', 
  `order_id` string COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `payment_method_id` int COMMENT '????id', 
  `request_amount` double COMMENT '????', 
  `arrive_amount` double COMMENT '????', 
  `generate_time` string COMMENT '????', 
  `arrival_time` string COMMENT '????', 
  `operate_time` string COMMENT '????', 
  `failed_reason` string COMMENT '????', 
  `retry_count` int COMMENT '????', 
  `trade_no` string COMMENT 'trade_no', 
  `inputer` string COMMENT 'inputer', 
  `online_response` string COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `online_transeq` string COMMENT 'online_transeq', 
  `online_ordernumber` string COMMENT 'online_ordernumber', 
  `start_date` string COMMENT '????')
PARTITIONED BY ( 
  `country_code` string, 
  `end_date` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_fin_mall_online_payment_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448958863')
;
CREATE EXTERNAL TABLE `dwd.dwd_fin_mall_payment_detail_all`(
  `payment_execution_id` bigint COMMENT '????id', 
  `payment_plan_id` bigint COMMENT '????id', 
  `order_id` string COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `order_amount` double COMMENT '????', 
  `market_place_id` string COMMENT 'market_place_id', 
  `execute_type` int COMMENT '????', 
  `execute_status` int COMMENT '????', 
  `payment_method_id` int COMMENT '????id', 
  `pin` string COMMENT 'pin', 
  `request_amount` double COMMENT '????', 
  `complete_amount` double COMMENT '????', 
  `pending_amount` double COMMENT '????', 
  `operate_time` string COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `invoice_amount` double COMMENT '????', 
  `payment_id` bigint COMMENT '??id', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_fin_mall_payment_detail_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449630731')
;
CREATE EXTERNAL TABLE `dwd.dwd_fin_mall_payment_detail_his`(
  `payment_execution_id` bigint COMMENT '????id', 
  `payment_plan_id` bigint COMMENT '????id', 
  `order_id` string COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `order_amount` double COMMENT '????', 
  `market_place_id` string COMMENT 'market_place_id', 
  `execute_type` int COMMENT '????', 
  `execute_status` int COMMENT '????', 
  `payment_method_id` int COMMENT '????id', 
  `pin` string COMMENT 'pin', 
  `request_amount` double COMMENT '????', 
  `complete_amount` double COMMENT '????', 
  `pending_amount` double COMMENT '????', 
  `operate_time` string COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `invoice_amount` double COMMENT '????', 
  `payment_id` bigint COMMENT '??id', 
  `start_date` string COMMENT '????')
PARTITIONED BY ( 
  `country_code` string, 
  `end_date` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_fin_mall_payment_detail_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756201')
;
CREATE EXTERNAL TABLE `dwd.dwd_fin_mall_payment_plan_all`(
  `payment_plan_id` bigint COMMENT '????id', 
  `market_place_id` string COMMENT 'market_place_id', 
  `execute_type` int COMMENT '????', 
  `execute_status` int COMMENT '????', 
  `trans_ref_type` int COMMENT 'trans_ref_type', 
  `order_id` string COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `order_amount` double COMMENT '????', 
  `request_amount` double COMMENT '????', 
  `complete_amount` double COMMENT '????', 
  `pending_amount` double COMMENT '????', 
  `requester` string COMMENT 'requester', 
  `request_time` string COMMENT '????', 
  `last_execute_time` string COMMENT '??????', 
  `trans_ref_id` string COMMENT '??id', 
  `remark` string COMMENT '??', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_fin_mall_payment_plan_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449630733')
;
CREATE EXTERNAL TABLE `dwd.dwd_fin_mall_payment_plan_his`(
  `payment_plan_id` bigint COMMENT '????id', 
  `market_place_id` string COMMENT 'market_place_id', 
  `execute_type` int COMMENT '????', 
  `execute_status` int COMMENT '????', 
  `trans_ref_type` int COMMENT 'trans_ref_type', 
  `order_id` string COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `order_amount` double COMMENT '????', 
  `request_amount` double COMMENT '????', 
  `complete_amount` double COMMENT '????', 
  `pending_amount` double COMMENT '????', 
  `requester` string COMMENT 'requester', 
  `request_time` string COMMENT '????', 
  `last_execute_time` string COMMENT '??????', 
  `trans_ref_id` string COMMENT '??id', 
  `remark` string COMMENT '??', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `start_date` string COMMENT '????')
PARTITIONED BY ( 
  `country_code` string, 
  `end_date` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_fin_mall_payment_plan_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756202')
;
CREATE EXTERNAL TABLE `dwd.dwd_flow_log_ad_play_day`(
  `dvc_id` string COMMENT '??ID', 
  `user_id` bigint COMMENT '??id', 
  `ip` string COMMENT 'IP??', 
  `country_code` string COMMENT '????', 
  `region_code` string COMMENT '????', 
  `province_code` string COMMENT '????', 
  `city_code` string COMMENT '????', 
  `isp_code` string COMMENT '?????', 
  `receive_time` string COMMENT '??????', 
  `time_period` string COMMENT '????(5min)', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `p3` string COMMENT '???????', 
  `act_code` string COMMENT '????', 
  `event_id` string COMMENT '??ID', 
  `play_id` string COMMENT '????', 
  `cid` string COMMENT '??ID', 
  `pid` string COMMENT '??ID', 
  `vid` string COMMENT '??ID', 
  `video_length` string COMMENT '????', 
  `mms_id` string COMMENT '??ID', 
  `play_chnl` string COMMENT '????', 
  `retry_times` string COMMENT '????', 
  `play_type` string COMMENT '????', 
  `ad_type` string COMMENT '????', 
  `ad_file_type` string COMMENT '????', 
  `ad_nums` string COMMENT '?????????', 
  `ad_group_order` string COMMENT '?????', 
  `ad_dur` string COMMENT '??????', 
  `group_ad_dur` string COMMENT '??????', 
  `ad_sys` string COMMENT '????', 
  `ad_player_version` string COMMENT '???????', 
  `ad_material_add` string COMMENT '??????', 
  `ad_material_down_speed` string COMMENT '????????', 
  `ad_size` string COMMENT '??????', 
  `download_time` string COMMENT '??????', 
  `url` string COMMENT '??url', 
  `ref` string COMMENT '????', 
  `player_version` string COMMENT '?????', 
  `property` string COMMENT '????', 
  `pcode` string COMMENT '?????????', 
  `order_item_id` int COMMENT '????id', 
  `timeline_position` string COMMENT '?????', 
  `forbid_ad_type` string COMMENT '??????', 
  `err_flag` string COMMENT '????', 
  `err_msg` string COMMENT '????', 
  `fake_flag` string COMMENT '??IP??', 
  `current_time` string COMMENT '??????', 
  `app_run_id` string COMMENT 'APP??ID', 
  `third_dur` string COMMENT '???????')
PARTITIONED BY ( 
  `dt` string COMMENT '??', 
  `pf` string COMMENT '??')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_log_ad_play_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449480662')
;
CREATE EXTERNAL TABLE `dwd.dwd_flow_log_env_mc_day`(
  `dvc_id` string COMMENT '??ID', 
  `user_id` bigint COMMENT '??id', 
  `receive_time` string COMMENT '??????', 
  `ip` string COMMENT 'IP??', 
  `country_code` string COMMENT '????', 
  `region_code` string COMMENT '????', 
  `province_code` string COMMENT '????', 
  `city_code` string COMMENT '????', 
  `isp_code` string COMMENT '?????', 
  `pcode` string COMMENT '?????????', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `p3` string COMMENT '???????', 
  `net_type` string COMMENT '????', 
  `os` string COMMENT '????', 
  `os_v` string COMMENT '??????', 
  `app_name` string COMMENT '????', 
  `app_env` string COMMENT '????', 
  `app_v` string COMMENT '????', 
  `dvc_brand` string COMMENT '????', 
  `dvc_model` string COMMENT '????', 
  `dvc_type` string COMMENT '????', 
  `resolution` string COMMENT '??????', 
  `browser` string COMMENT '???', 
  `login_chnl` string COMMENT '????', 
  `fake_flag` string COMMENT '??IP??', 
  `cpu_cs` string COMMENT 'CPU??', 
  `wifi_ssid` string COMMENT 'WIFI??', 
  `longitude` string COMMENT '??', 
  `latitude` string COMMENT '??', 
  `property` string COMMENT '????')
PARTITIONED BY ( 
  `dt` string COMMENT '??', 
  `app_class` string COMMENT '????')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_log_env_mc_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449480640')
;
CREATE EXTERNAL TABLE `dwd.dwd_flow_log_env_mc_his`(
  `dvc_id` string, 
  `p1` string, 
  `p2` string, 
  `os` string, 
  `os_v` string, 
  `app_name` string, 
  `app_env` string, 
  `app_v` string, 
  `dvc_brand` string, 
  `dvc_model` string, 
  `dvc_type` string, 
  `resolution` string, 
  `cpu_cs` string, 
  `pcode` string, 
  `login_times` string, 
  `first_login_date` string, 
  `first_pcode` string, 
  `update_date` string, 
  `began_dt` string, 
  `end_dt` string)
PARTITIONED BY ( 
  `dt` string, 
  `app_class` string, 
  `status` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_log_env_mc_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449569374')
;
CREATE TABLE `dwd.dwd_flow_log_env_tv_day`(
  `dvc_id` string COMMENT '??ID', 
  `user_id` bigint COMMENT '??id', 
  `receive_time` string COMMENT '??????', 
  `ip` string COMMENT 'IP??', 
  `country_code` string COMMENT '????', 
  `region_code` string COMMENT '????', 
  `province_code` string COMMENT '????', 
  `city_code` string COMMENT '????', 
  `isp_code` string COMMENT '?????', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `p3` string COMMENT '???????', 
  `net_type` string COMMENT '????', 
  `os` string COMMENT '????', 
  `os_v` string COMMENT '??????', 
  `app_v` string COMMENT '????', 
  `dvc_brand` string COMMENT '????', 
  `dvc_model` string COMMENT '????', 
  `dvc_type` string COMMENT '????', 
  `resolution` string COMMENT '??????', 
  `wifi_ssid` string COMMENT 'WIFI??', 
  `dvc_auid` string COMMENT '????', 
  `property` string COMMENT '????')
PARTITIONED BY ( 
  `dt` string COMMENT '??', 
  `sale_area` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_log_env_tv_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449648280')
;
CREATE EXTERNAL TABLE `dwd.dwd_flow_log_login_mc_day`(
  `dvc_id` string COMMENT '??ID', 
  `user_id` bigint COMMENT '??id', 
  `ip` string COMMENT 'IP??', 
  `country_code` string COMMENT '????', 
  `region_code` string COMMENT '????', 
  `province_code` string COMMENT '????', 
  `city_code` string COMMENT '????', 
  `isp_code` string COMMENT '?????', 
  `ref` string COMMENT '????', 
  `pcode` string COMMENT '?????????', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `p3` string COMMENT '???????', 
  `login_time` string COMMENT '????', 
  `os` string COMMENT '????', 
  `os_v` string COMMENT '??????', 
  `app_name` string COMMENT '????', 
  `app_env` string COMMENT '????', 
  `app_v` string COMMENT '????', 
  `dvc_brand` string COMMENT '????', 
  `dvc_model` string COMMENT '????', 
  `dvc_type` string COMMENT '????', 
  `login_chnl` string COMMENT '????', 
  `fake_flag` string COMMENT '??IP??', 
  `login_status` string COMMENT '????')
PARTITIONED BY ( 
  `dt` string COMMENT '??', 
  `app_class` string COMMENT '????')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_log_login_mc_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449480626')
;
CREATE TABLE `dwd.dwd_flow_log_login_tv_day`(
  `dvc_id` string COMMENT '??ID', 
  `user_id` bigint COMMENT '??id', 
  `ip` string COMMENT 'IP??', 
  `country_code` string COMMENT '????', 
  `region_code` string COMMENT '????', 
  `province_code` string COMMENT '????', 
  `city_code` string COMMENT '????', 
  `isp_code` string COMMENT '?????', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `p3` string COMMENT '???????', 
  `login_time` string COMMENT '????', 
  `fake_flag` string COMMENT '??IP??', 
  `login_status` string COMMENT '????')
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
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_log_login_tv_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449651014')
;
CREATE EXTERNAL TABLE `dwd.dwd_flow_log_play_day`(
  `dvc_id` string COMMENT '??ID', 
  `user_id` bigint COMMENT '??id', 
  `ip` string COMMENT 'IP??', 
  `country_code` string COMMENT '????', 
  `region_code` string COMMENT '????', 
  `province_code` string COMMENT '????', 
  `city_code` string COMMENT '????', 
  `isp_code` string COMMENT '?????', 
  `receive_time` string COMMENT '??????', 
  `time_period` string COMMENT '????(5min)', 
  `current_time` string COMMENT '??????', 
  `p1` string COMMENT '???????', 
  `p2` string COMMENT '???????', 
  `p3` string COMMENT '???????', 
  `sub_dvc_id` string COMMENT '???id', 
  `act_code` string COMMENT '????', 
  `pt` bigint COMMENT '????', 
  `use_dur` string COMMENT '????', 
  `play_id` string COMMENT '????', 
  `cid` string COMMENT '??ID', 
  `pid` string COMMENT '??ID', 
  `vid` string COMMENT '??ID', 
  `video_length` string COMMENT '????', 
  `play_chnl` string COMMENT '????', 
  `retry_times` string COMMENT '????', 
  `play_type` string COMMENT '????', 
  `video_type` string COMMENT '????', 
  `video_rate` string COMMENT '????', 
  `url` string COMMENT '??url', 
  `ref` string COMMENT '????', 
  `player_version` string COMMENT '?????', 
  `property` string COMMENT '????', 
  `oa_station` string COMMENT '???', 
  `pcode` string COMMENT '?????????', 
  `web_env_id` string COMMENT 'WEB??ID', 
  `auto_play_flag` string COMMENT '??????', 
  `timeline_position` string COMMENT '?????', 
  `zid` string COMMENT '??ID', 
  `live_id` string COMMENT '??id', 
  `err_flag` string COMMENT '????', 
  `err_msg` string COMMENT '????', 
  `fake_flag` string COMMENT '??IP??', 
  `cdn_ip` string COMMENT 'CDN?IP??', 
  `net_type` string COMMENT '????', 
  `random_digit` string COMMENT '???', 
  `start_play_period` string COMMENT '?????', 
  `stream_id` string COMMENT '???ID', 
  `pre_load_flag` string COMMENT '?????', 
  `cde_ver` string COMMENT 'cde??', 
  `cde_app_id` string COMMENT 'CDE??APP??ID', 
  `pay_flag` string COMMENT '????', 
  `joint_flag` string COMMENT '??????', 
  `init_play_type` string COMMENT '???????', 
  `cloud_cust_id` string COMMENT '???????', 
  `app_run_id` string COMMENT 'APP??ID')
PARTITIONED BY ( 
  `dt` string COMMENT '??', 
  `pf` string COMMENT '??')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_log_play_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449539820')
;
CREATE EXTERNAL TABLE `dwd.dwd_flow_sdk_mall_pv_day`(
  `cur_url` string COMMENT '??url', 
  `cur_timestamp` string COMMENT '?????', 
  `cur_timezone` string COMMENT '????', 
  `cur_time` string COMMENT '????', 
  `cur_hour` string COMMENT '????', 
  `ref_url` string COMMENT '??url', 
  `cur_session` string COMMENT '??session', 
  `dvc_id` string COMMENT '??ID', 
  `user_id` bigint COMMENT '??id', 
  `user_logon_flag` int COMMENT '??????', 
  `page_lang` string COMMENT '????', 
  `page_encode` string COMMENT '????', 
  `resolution` string COMMENT '??????', 
  `title` string COMMENT '??', 
  `ip` string COMMENT 'IP??', 
  `ip_country_code` string COMMENT '??IP?????', 
  `ip_country_name` string COMMENT '??IP?????', 
  `ip_region_code` string COMMENT '??IP?????', 
  `ip_region_name` string COMMENT '??IP?????', 
  `ip_province_code` string COMMENT '??IP???', 
  `ip_province_name` string COMMENT '??IP?????', 
  `ip_city_code` string COMMENT '??IP???', 
  `ip_city_name` string COMMENT '??IP???', 
  `ip_isp` string COMMENT 'ip??????', 
  `browser` string COMMENT '???', 
  `os` string COMMENT '????', 
  `device_type` string COMMENT '????', 
  `is_logon_user` string COMMENT '???????', 
  `cur_url_host` string COMMENT 'cur_url??', 
  `cur_url_path` string COMMENT 'cur_url??', 
  `cur_url_query` string COMMENT 'cur_url??', 
  `cur_alys_id` string COMMENT 'cur_url????', 
  `cur_cps_id` string COMMENT 'cur_url????', 
  `ref_url_host` string COMMENT 'ref_url??', 
  `ref_url_path` string COMMENT 'ref_url??', 
  `ref_url_query` string COMMENT 'ref_url??', 
  `ref_alys_id` string COMMENT 'ref_url????', 
  `ref_cps_id` string COMMENT 'ref_url????', 
  `cur_url_cate` string COMMENT '?????', 
  `cur_url_level` string COMMENT '?????', 
  `cur_url_desc` string COMMENT 'cur_url??', 
  `cur_url_product_id` string COMMENT '?????id', 
  `cur_url_order_id` string COMMENT 'cur_url????id', 
  `cur_cps_id2` string COMMENT '???cps_id2', 
  `cps_media` string COMMENT 'cps??', 
  `cps_channel` string COMMENT 'cps??', 
  `cps_level3_class` string COMMENT 'cps????', 
  `cps_level4_class` string COMMENT 'cps????', 
  `cps_level5_class` string COMMENT 'cps????', 
  `cps_level6_class` string COMMENT 'cps????', 
  `cps_level7_class` string COMMENT 'cps????', 
  `cps_level8_class` string COMMENT 'cps????', 
  `cps_level9_class` string COMMENT 'cps????', 
  `cur_url_visit_time` int COMMENT '???????')
PARTITIONED BY ( 
  `dt` string COMMENT '????', 
  `country_code` string, 
  `pf` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_mall_pv_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447748961')
;
CREATE EXTERNAL TABLE `dwd.dwd_flow_sdk_phone_app_day`(
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
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_phone_app_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446792301')
;
CREATE TABLE `dwd.dwd_flow_sdk_phone_app_imei_his_day`(
  `imei` string, 
  `app_name` string, 
  `first_active_date` string, 
  `first_app_version` string, 
  `last_active_date` string, 
  `last_app_version` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_phone_app_imei_his_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448336101')
;
CREATE TABLE `dwd.dwd_flow_sdk_phone_app_usage_day`(
  `start_id` string COMMENT '??ID', 
  `imei` string COMMENT 'IMEI?', 
  `current_time` string COMMENT '??????', 
  `package_name` string COMMENT '???', 
  `app_version` string COMMENT 'APP??', 
  `send_time` string COMMENT '??????', 
  `letv_uid` string COMMENT '???????', 
  `app_run_id` string COMMENT 'APP??ID', 
  `start_from` string COMMENT '??', 
  `ip` string COMMENT 'IP??', 
  `ip_country_code` string COMMENT '??IP?????', 
  `ip_country_name` string COMMENT '??IP?????', 
  `ip_region_code` string COMMENT '??IP?????', 
  `ip_region_name` string COMMENT '??IP?????', 
  `ip_province_code` string COMMENT '??IP???', 
  `ip_province_name` string COMMENT '??IP?????', 
  `ip_city_code` string COMMENT '??IP???', 
  `ip_city_name` string COMMENT '??IP???', 
  `ip_isp` string COMMENT 'ip??????', 
  `server_time` string COMMENT '???????', 
  `open_time` string COMMENT 'APP????', 
  `closed_time` string COMMENT 'APP????', 
  `open_dur` string COMMENT '????')
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
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_phone_app_usage_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448337024')
;
CREATE TABLE `dwd.dwd_flow_sdk_phone_app_user_his_day`(
  `letv_uid` string, 
  `app_name` string, 
  `first_active_date` string, 
  `first_app_version` string, 
  `last_active_date` string, 
  `last_app_version` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_phone_app_user_his_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448337023')
;
CREATE TABLE `dwd.dwd_flow_sdk_phone_beat_day`(
  `start_id` string, 
  `current_time` string, 
  `battery_status` string, 
  `send_time` string, 
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
  `gps` string, 
  `gps_country` string, 
  `gps_province` string, 
  `gps_city` string, 
  `gps_county` string, 
  `gps_town` string, 
  `gps_street` string, 
  `gps_building` string, 
  `gps_other` string, 
  `network_type` string, 
  `mac` string, 
  `lived_time` string, 
  `wifi_ssid` string, 
  `letv_uid` string, 
  `imei` string, 
  `phone_no` string, 
  `isp` string, 
  `phone_network_type` string, 
  `imei_2` string, 
  `phone_no_2` string, 
  `isp_2` string, 
  `phone_network_type_2` string, 
  `props` map<string,string>, 
  `start_time` string, 
  `cp_version` string, 
  `build_version` string, 
  `product_vendor` string, 
  `product_model` string, 
  `is_root` string, 
  `first_active_date` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_phone_beat_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448336102')
;
CREATE TABLE `dwd.dwd_flow_sdk_phone_env_day`(
  `start_id` string, 
  `current_time` string, 
  `start_time` string, 
  `send_time` string, 
  `product_vendor` string, 
  `build_version` string, 
  `product_model` string, 
  `hardeware_version` string, 
  `mac` string, 
  `os` string, 
  `is_root` string, 
  `cp_version` string, 
  `os_version` string, 
  `kernel_version` string, 
  `network_type` string, 
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
  `gps` string, 
  `gps_country` string, 
  `gps_province` string, 
  `gps_city` string, 
  `gps_county` string, 
  `gps_town` string, 
  `gps_street` string, 
  `gps_building` string, 
  `gps_other` string, 
  `battery_status` string, 
  `device_id` string, 
  `letv_uid` string, 
  `imei` string, 
  `phone_no` string, 
  `isp` string, 
  `phone_network_type` string, 
  `imei_2` string, 
  `phone_no_2` string, 
  `isp_2` string, 
  `phone_network_type_2` string, 
  `props` map<string,string>, 
  `server_time` string, 
  `first_active_date` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_phone_env_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448336102')
;
CREATE TABLE `dwd.dwd_flow_sdk_phone_event_day`(
  `start_id` string, 
  `current_time` string, 
  `app_name` string, 
  `app_version` string, 
  `event_id` string, 
  `push_id` string, 
  `widget_id` string, 
  `result` string, 
  `send_time` string, 
  `letv_uid` string, 
  `app_run_id` string, 
  `package_name` string, 
  `imei` string, 
  `phone_no` string, 
  `isp` string, 
  `network_type` string, 
  `props` map<string,string>, 
  `ip` string, 
  `ip_country_code` string, 
  `ip_country_name` string, 
  `ip_region_code` string, 
  `ip_region_name` string, 
  `ip_province_code` string, 
  `ip_province_name` string, 
  `ip_city_code` string, 
  `ip_city_name` string, 
  `ip_isp` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_phone_event_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448336103')
;
CREATE TABLE `dwd.dwd_flow_sdk_phone_music_play_day`(
  `start_id` string, 
  `current_time` string, 
  `app_name` string, 
  `app_version` string, 
  `event_id` string, 
  `widget_id` string, 
  `send_time` string, 
  `letv_uid` string, 
  `app_run_id` string, 
  `song_id` string, 
  `album_id` string, 
  `network` string, 
  `recom_id` string, 
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
  `imei` string, 
  `pt` bigint, 
  `props` map<string,string>)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_phone_music_play_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448336105')
;
CREATE TABLE `dwd.dwd_flow_sdk_phone_tags_user_day`(
  `letv_uid` string, 
  `app_name` string, 
  `tag_id` string, 
  `act_time` string, 
  `currt_status` string)
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
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_phone_tags_user_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448337024')
;
CREATE EXTERNAL TABLE `dwd.dwd_flow_sdk_phone_video_play_day`(
  `start_id` string COMMENT '??ID', 
  `start_time` string COMMENT '????', 
  `end_time` string COMMENT '????', 
  `play_id` string COMMENT '????', 
  `widget_id` string COMMENT '??ID', 
  `app_name` string COMMENT '????', 
  `app_version` string COMMENT 'APP??', 
  `app_run_id` string COMMENT 'APP??ID', 
  `vid` string COMMENT '??ID', 
  `pid` string COMMENT '??ID', 
  `cid` string COMMENT '??ID', 
  `push_id` string COMMENT '??ID', 
  `url` string COMMENT '??url', 
  `length` string COMMENT '??', 
  `play_type` string COMMENT '????', 
  `stream` string COMMENT '??', 
  `src` string COMMENT '??', 
  `letv_uid` string COMMENT '???????', 
  `station_id` string COMMENT '??id', 
  `live_id` string COMMENT '??id', 
  `user_type` string COMMENT '????', 
  `network_type` string COMMENT '????', 
  `ip` string COMMENT 'IP??', 
  `ip_country_code` string COMMENT '??IP?????', 
  `ip_country_name` string COMMENT '??IP?????', 
  `ip_region_code` string COMMENT '??IP?????', 
  `ip_region_name` string COMMENT '??IP?????', 
  `ip_province_code` string COMMENT '??IP???', 
  `ip_province_name` string COMMENT '??IP?????', 
  `ip_city_code` string COMMENT '??IP???', 
  `ip_city_name` string COMMENT '??IP???', 
  `ip_isp` string COMMENT 'ip??????', 
  `imei` string COMMENT 'IMEI?', 
  `phone_model` string COMMENT '????', 
  `vv` int COMMENT '???', 
  `cv` int COMMENT '?????', 
  `pt` int COMMENT '????')
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_phone_video_play_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447295405')
;
CREATE EXTERNAL TABLE `dwd.dwd_flow_sdk_sport_pv_day`(
  `dvc_id` string COMMENT '??ID', 
  `user_id` bigint COMMENT '??id', 
  `cur_url` string COMMENT '??url', 
  `cur_time` string COMMENT '????', 
  `cur_hour` string COMMENT '????', 
  `ref_url` string COMMENT '??url', 
  `cur_session` string COMMENT '??session', 
  `page_lang` string COMMENT '????', 
  `page_encode` string COMMENT '????', 
  `resolution` string COMMENT '??????', 
  `title` string COMMENT '??', 
  `ip` string COMMENT 'IP??', 
  `ip_country_code` string COMMENT '??IP?????', 
  `ip_country_name` string COMMENT '??IP?????', 
  `ip_region_code` string COMMENT '??IP?????', 
  `ip_region_name` string COMMENT '??IP?????', 
  `ip_province_code` string COMMENT '??IP???', 
  `ip_province_name` string COMMENT '??IP?????', 
  `ip_city_code` string COMMENT '??IP???', 
  `ip_city_name` string COMMENT '??IP???', 
  `ip_isp` string COMMENT 'ip??????', 
  `browser` string COMMENT '???', 
  `os` string COMMENT '????', 
  `device_type` string COMMENT '????', 
  `is_login_user` string COMMENT '??????', 
  `cur_url_host` string COMMENT 'cur_url??', 
  `cur_url_path` string COMMENT 'cur_url??', 
  `cur_url_query` string COMMENT 'cur_url??', 
  `cur_alys_id` string COMMENT 'cur_url????', 
  `cur_cps_id` string COMMENT 'cur_url????', 
  `ref_url_host` string COMMENT 'ref_url??', 
  `ref_url_path` string COMMENT 'ref_url??', 
  `ref_url_query` string COMMENT 'ref_url??', 
  `ref_alys_id` string COMMENT 'ref_url????', 
  `ref_cps_id` string COMMENT 'ref_url????', 
  `cur_url_class` string COMMENT '?????', 
  `cur_url_desc` string COMMENT 'cur_url??')
COMMENT 'dwb_megatron_pv_hour  t1'
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
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_sdk_sport_pv_day'
TBLPROPERTIES (
  'last_modified_by'='liufu', 
  'last_modified_time'='1447298904', 
  'transient_lastDdlTime'='1447298904')
;
CREATE TABLE `dwd.dwd_flow_shop_log_pv_day`(
  `cur_url` string COMMENT '??url', 
  `cur_time` string COMMENT '????', 
  `cur_hour` string COMMENT '????', 
  `ref_url` string COMMENT '??url', 
  `cur_session` string COMMENT '??session', 
  `letv_cookie` string COMMENT 'letv_cookie', 
  `letv_uid` string COMMENT '???????', 
  `cookie_logon_flag` int COMMENT 'cookie????', 
  `lang` string COMMENT '??', 
  `encode` string COMMENT '??', 
  `resolution` string COMMENT '??????', 
  `title` string COMMENT '??', 
  `ip` string COMMENT 'IP??', 
  `ip_country_code` string COMMENT '??IP?????', 
  `ip_country_name` string COMMENT '??IP?????', 
  `ip_region_code` string COMMENT '??IP?????', 
  `ip_region_name` string COMMENT '??IP?????', 
  `ip_province_code` string COMMENT '??IP???', 
  `ip_province_name` string COMMENT '??IP?????', 
  `ip_city_code` string COMMENT '??IP???', 
  `ip_city_name` string COMMENT '??IP???', 
  `ip_isp` string COMMENT 'ip??????', 
  `browser` string COMMENT '???', 
  `os` string COMMENT '????', 
  `device_type` string COMMENT '????', 
  `is_logon_user` string COMMENT '???????', 
  `cur_url_host` string COMMENT 'cur_url??', 
  `cur_url_path` string COMMENT 'cur_url??', 
  `cur_url_query` string COMMENT 'cur_url??', 
  `cur_alys_id` string COMMENT 'cur_url????', 
  `cur_cps_id` string COMMENT 'cur_url????', 
  `ref_url_host` string COMMENT 'ref_url??', 
  `ref_url_path` string COMMENT 'ref_url??', 
  `ref_url_query` string COMMENT 'ref_url??', 
  `ref_alys_id` string COMMENT 'ref_url????', 
  `ref_cps_id` string COMMENT 'ref_url????', 
  `cur_url_cate` string COMMENT '?????', 
  `cur_url_level` string COMMENT '?????', 
  `cur_url_desc` string COMMENT 'cur_url??', 
  `cur_url_product_id` string COMMENT '?????id', 
  `cur_url_order_id` string COMMENT 'cur_url????id', 
  `cur_cps_id2` string COMMENT '???cps_id2', 
  `cps_media` string COMMENT 'cps??', 
  `cps_channel` string COMMENT 'cps??', 
  `cps_class_level3` string COMMENT 'cps????', 
  `cps_class_level4` string COMMENT 'cps????', 
  `cps_class_level5` string COMMENT 'cps????', 
  `cps_class_level6` string COMMENT 'cps????', 
  `cps_class_level7` string COMMENT 'cps????', 
  `cps_class_level8` string COMMENT 'cps????', 
  `cps_class_level9` string COMMENT 'cps????', 
  `cur_url_visit_time` int COMMENT '???????')
PARTITIONED BY ( 
  `ds` string COMMENT '????', 
  `dt` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.SequenceFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveSequenceFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_flow_shop_log_pv_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1445914327')
;
CREATE EXTERNAL TABLE `dwd.dwd_loc_city`(
  `country_code` string COMMENT '??????', 
  `country_name` string COMMENT '??????
', 
  `city_code` string COMMENT '?????', 
  `city_name` string COMMENT '????
', 
  `province_code` string COMMENT '?????', 
  `province_name` string COMMENT '?????
')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_loc_city'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'last_modified_by'='liufu', 
  'last_modified_time'='1447299111', 
  'numFiles'='1', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='27744', 
  'transient_lastDdlTime'='1447299111')
;
CREATE EXTERNAL TABLE `dwd.dwd_loc_country`(
  `country_code` string COMMENT '??????', 
  `country_name` string COMMENT '??????
')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_loc_country'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'last_modified_by'='liufu', 
  'last_modified_time'='1447299111', 
  'numFiles'='1', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='3974', 
  'transient_lastDdlTime'='1447299111')
;
CREATE TABLE `dwd.dwd_loc_district`(
  `country_code` string COMMENT '??????', 
  `country_name` string COMMENT '??????
', 
  `city_code` string COMMENT '?????', 
  `city_name` string COMMENT '????
', 
  `province_code` string COMMENT '?????', 
  `province_name` string COMMENT '?????', 
  `district_code` string COMMENT '?????', 
  `district_name` string COMMENT '?????
')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_loc_district'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'totalSize'='227573', 
  'transient_lastDdlTime'='1440393771')
;
CREATE EXTERNAL TABLE `dwd.dwd_loc_mall_shipping_area_all`(
  `area_id` int COMMENT '??id', 
  `parent_id` bigint, 
  `area_name` string COMMENT '????', 
  `area_code` string COMMENT '????', 
  `postcode` string COMMENT '??', 
  `status` string COMMENT '????', 
  `sort` tinyint COMMENT '??', 
  `level` int COMMENT '??', 
  `wuzhou_area_name` string COMMENT 'wuzhou_area_name', 
  `barriocode` string COMMENT 'barriocode', 
  `barrioname` string COMMENT 'barrioname', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_loc_mall_shipping_area_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756203')
;
CREATE EXTERNAL TABLE `dwd.dwd_loc_province`(
  `country_code` string COMMENT '??????', 
  `country_name` string COMMENT '??????
', 
  `city_code` string COMMENT '?????', 
  `city_name` string COMMENT '????
')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_loc_province'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='false', 
  'last_modified_by'='liufu', 
  'last_modified_time'='1447299112', 
  'numFiles'='1', 
  'numRows'='-1', 
  'rawDataSize'='-1', 
  'totalSize'='8602', 
  'transient_lastDdlTime'='1447299112')
;
CREATE EXTERNAL TABLE `dwd.dwd_mkt_mall_rush_all`(
  `rush_id` int COMMENT '??id', 
  `rush_name` string COMMENT '????', 
  `rush_type` tinyint COMMENT '????', 
  `appointment_maxnum` int COMMENT '??????', 
  `appointment_maxnum_per` int COMMENT '????????', 
  `amt_starttime` string COMMENT '??????', 
  `amt_endtime` string COMMENT '??????', 
  `rush_maxnum` int COMMENT '??????', 
  `rush_maxnum_per` int COMMENT '????????', 
  `rush_starttime` string COMMENT '??????', 
  `rush_endtime` string COMMENT '??????', 
  `product_id` string COMMENT '??id', 
  `product_name` string COMMENT '????', 
  `rush_status` int COMMENT '????', 
  `sms_time` string COMMENT '????', 
  `cancelorder_time` string COMMENT '??????', 
  `is_need_approve` tinyint COMMENT '??????', 
  `amt_starttime_s` string COMMENT '????????', 
  `amt_endtime_s` string COMMENT '????????', 
  `rush_starttime_s` string COMMENT '????????', 
  `rush_endtime_s` string COMMENT '????????', 
  `is_false` tinyint COMMENT '????', 
  `short_prodname` string COMMENT '????', 
  `remark` string COMMENT '??', 
  `rushinfo` string COMMENT '????', 
  `promotion_id` string COMMENT '??id', 
  `rush_times` int COMMENT '????', 
  `is_check_mobile` int COMMENT '??????', 
  `parent_rush_id` int COMMENT '???id', 
  `group_id` string COMMENT '?id', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_mkt_mall_rush_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756202')
;
CREATE EXTERNAL TABLE `dwd.dwd_pdt_mall_product_accessory_all`(
  `main_product_id` string COMMENT '???id', 
  `product_id` string COMMENT '??id', 
  `product_name` string COMMENT '????', 
  `accessory_type_id` bigint COMMENT '????id', 
  `accessory_type_name` string COMMENT '??????', 
  `accessory_title` string COMMENT '????', 
  `accessory_desc` string COMMENT '????', 
  `sale_price` double COMMENT '????', 
  `real_price` double COMMENT '????', 
  `agency_price` double COMMENT '?????', 
  `is_required_flag` tinyint COMMENT '??????', 
  `is_default_flag` tinyint COMMENT '??????', 
  `more_desc` string COMMENT '????', 
  `replace_product_id` string COMMENT '????id', 
  `relevance_num` int COMMENT '????', 
  `buy_quantity` int COMMENT '????', 
  `relevance_desc` string COMMENT '????', 
  `seq_no` int COMMENT '??', 
  `is_usemainpid_num` int COMMENT '???????????', 
  `accessory_type` int COMMENT '????', 
  `min_buy_num` int COMMENT '??????', 
  `max_buy_num` int COMMENT '??????', 
  `product_code` string COMMENT '????', 
  `product_level1_type` string COMMENT '??????', 
  `product_level1_name` string COMMENT '????????', 
  `product_level2_type` string COMMENT '??????', 
  `product_level2_name` string COMMENT '????????', 
  `product_level3_type` string COMMENT '??????', 
  `product_level3_name` string COMMENT '????????', 
  `exclusion_group_flag` int COMMENT '??????', 
  `create_user` bigint COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_user` bigint COMMENT '????', 
  `update_time` string COMMENT '????', 
  `is_delete` tinyint COMMENT '????', 
  `applicable_model` string COMMENT '????', 
  `is_virtual` tinyint COMMENT '??????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pdt_mall_product_accessory_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756200')
;
CREATE EXTERNAL TABLE `dwd.dwd_pdt_mall_product_cate_all`(
  `category_no` string COMMENT '????', 
  `category_name` string COMMENT '????', 
  `parent_no` string COMMENT '???', 
  `if_haschild` tinyint COMMENT '??????', 
  `level` int COMMENT '??', 
  `priority` tinyint COMMENT '???', 
  `status` string COMMENT '????', 
  `create_user_id` bigint COMMENT '????id', 
  `create_user_name` string COMMENT '??????', 
  `create_time` string COMMENT '????', 
  `update_user_id` bigint COMMENT '????id', 
  `update_user_name` string COMMENT '??????', 
  `update_time` string COMMENT '????', 
  `is_active` int COMMENT '????', 
  `remark` string COMMENT '??', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pdt_mall_product_cate_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449214604')
;
CREATE EXTERNAL TABLE `dwd.dwd_pdt_mall_product_main_all`(
  `product_id` string COMMENT '??id', 
  `product_name` string COMMENT '????', 
  `product_en_name` string COMMENT '??????', 
  `sku_id` string COMMENT 'sku_id', 
  `sale_price` double COMMENT '????', 
  `real_price` double COMMENT '????', 
  `is_energy_saving` smallint COMMENT '??????', 
  `energy_saving_price` double COMMENT '????', 
  `product_model` string COMMENT '????', 
  `max_buy_num` int COMMENT '??????', 
  `min_buy_num` int COMMENT '??????', 
  `is_key_account` tinyint COMMENT '???????', 
  `vip_flag` tinyint COMMENT 'vip??', 
  `product_show_status` tinyint COMMENT '??????', 
  `is_large_product` tinyint COMMENT '??????', 
  `is_sale_flag` tinyint COMMENT '??????', 
  `is_presale_booking_flag` tinyint COMMENT '??????', 
  `is_oldfornew_flag` tinyint COMMENT '???????', 
  `product_status` tinyint COMMENT '????', 
  `is_eb_flag` tinyint COMMENT '????????', 
  `eb_id` bigint COMMENT '????ID', 
  `eb_name` string COMMENT '??????', 
  `product_stock_num` bigint COMMENT '??????', 
  `sales_total_num` bigint COMMENT '????', 
  `storage_id` int COMMENT '??id', 
  `reveal_status` tinyint COMMENT '??????', 
  `is_use_lecode` tinyint COMMENT '??????', 
  `charge_mode` tinyint COMMENT '??????', 
  `lecode_price` double COMMENT '????', 
  `sales_start_time` string COMMENT '??????', 
  `sales_end_time` string COMMENT '??????', 
  `code69` string COMMENT '????', 
  `is_visible` int COMMENT '????', 
  `is_new_data` tinyint COMMENT 'is_new_data', 
  `is_suite_data` tinyint COMMENT 'is_suite_data', 
  `seo_title` string COMMENT '????', 
  `seo_keyword` string COMMENT '?????', 
  `seo_desc` string COMMENT '????', 
  `suitesubtitle` string COMMENT '?????', 
  `hardwarepricedescription` string COMMENT '??????', 
  `contentpricedescription` string COMMENT '??????', 
  `settlemessagetip` string COMMENT '??????', 
  `suite_main_product_id` string COMMENT '?????id', 
  `suite_main_product_name` string COMMENT '???????', 
  `suite_main_product_num` int COMMENT '???????', 
  `suite_main_product_price` double COMMENT '???????', 
  `product_code` string COMMENT '????', 
  `product_level1_type` string COMMENT '??????', 
  `product_level1_name` string COMMENT '????????', 
  `product_level2_type` string COMMENT '??????', 
  `product_level2_name` string COMMENT '????????', 
  `product_level3_type` string COMMENT '??????', 
  `product_level3_name` string COMMENT '????????', 
  `productgroupno` string COMMENT '?????', 
  `productmodel` string COMMENT '????', 
  `p_skuname` string COMMENT '???_SKU??', 
  `s_skuname` string COMMENT '???_SKU??', 
  `suite_type` tinyint COMMENT '????', 
  `is_sku` tinyint COMMENT '???sku????', 
  `create_user` bigint COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_user` bigint COMMENT '????', 
  `update_time` string COMMENT '????', 
  `is_delete` tinyint COMMENT '????', 
  `applicable_model` string COMMENT '????', 
  `contract_type` tinyint COMMENT '????', 
  `isvirtual` tinyint COMMENT '?????', 
  `unit` string COMMENT '??', 
  `unit_cn_name` string COMMENT '??????', 
  `movie_product_id` string COMMENT '????ID', 
  `movie_product_model_id` string COMMENT '??????ID', 
  `presale_start_time` string COMMENT '??????', 
  `presale_end_time` string COMMENT '??????', 
  `is_support_pick_up_self` tinyint COMMENT '??????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pdt_mall_product_main_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756204')
;
CREATE EXTERNAL TABLE `dwd.dwd_pdt_mall_sku_all`(
  `sku_no` string COMMENT 'sku_no', 
  `sku_name` string COMMENT 'sku_name', 
  `product_level1_type` string COMMENT '??????', 
  `product_level1_name` string COMMENT '????????', 
  `product_level2_type` string COMMENT '??????', 
  `product_level2_name` string COMMENT '????????', 
  `product_level3_type` string COMMENT '??????', 
  `product_level3_name` string COMMENT '????????', 
  `seo_title` string COMMENT '????', 
  `seo_keyword` string COMMENT '?????', 
  `seo_desc` string COMMENT '????', 
  `productgroupno` string COMMENT '?????', 
  `productmodel` string COMMENT '????', 
  `p_skuname` string COMMENT '???_SKU??', 
  `s_skuname` string COMMENT '???_SKU??', 
  `bizno` string COMMENT '????', 
  `bizname` string COMMENT '????', 
  `spu_no` string COMMENT 'spu_no', 
  `sku_model` string COMMENT '????', 
  `unit` string COMMENT '??', 
  `barcode` string COMMENT '????', 
  `qrcode` string COMMENT '???', 
  `fit_machine_model` string COMMENT '????', 
  `sale_price` double COMMENT '????', 
  `is_support_lecode` tinyint COMMENT '??????', 
  `lecode_fav_amt` double COMMENT '??????', 
  `is_visible` int COMMENT '????', 
  `is_energy_saving` smallint COMMENT '??????', 
  `energysaving_fav_amt` double COMMENT '??????', 
  `min_buy_num` int COMMENT '??????', 
  `max_buy_num` int COMMENT '??????', 
  `presale_deposit_ratio` double COMMENT '??????', 
  `presale_start_time` string COMMENT '??????', 
  `presale_end_time` string COMMENT '??????', 
  `status` string COMMENT '????', 
  `product_short_desc` string COMMENT '??j????', 
  `product_detail_desc` string COMMENT '??????', 
  `weibo_desc` string COMMENT '????', 
  `sku_id` string COMMENT 'sku_id', 
  `is_support_presale` tinyint COMMENT '??????', 
  `is_support_large_customer` tinyint COMMENT '???????', 
  `create_user` bigint COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_user` bigint COMMENT '????', 
  `update_time` string COMMENT '????', 
  `agency_price` double COMMENT '?????', 
  `is_virtual` tinyint COMMENT '??????', 
  `is_manage_sn` tinyint COMMENT '????sn', 
  `invoice_name` string COMMENT '????', 
  `invoice_type` string COMMENT '????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pdt_mall_sku_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756201')
;
CREATE EXTERNAL TABLE `dwd.dwd_pdt_mall_sku_group_all`(
  `sku_no` string COMMENT 'sku_no', 
  `productgroupno` string COMMENT '?????', 
  `productmodel` string COMMENT '????', 
  `p_skuname` string COMMENT '???_SKU??', 
  `s_skuname` string COMMENT '???_SKU??', 
  `create_user_id` bigint COMMENT '????id', 
  `create_user_name` string COMMENT '??????', 
  `update_user_id` bigint COMMENT '????id', 
  `update_user_name` string COMMENT '??????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `is_active` int COMMENT '????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pdt_mall_sku_group_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449633745')
;
CREATE EXTERNAL TABLE `dwd.dwd_pdt_mall_suite_all`(
  `suite_no` string COMMENT '????', 
  `suite_name` string COMMENT '????', 
  `is_has_main_product` tinyint COMMENT '??????', 
  `sku_no` string COMMENT 'sku_no', 
  `sku_name` string COMMENT 'sku_name', 
  `min_buy_num` int COMMENT '??????', 
  `max_buy_num` int COMMENT '??????', 
  `presale_deposit_ratio` double COMMENT '??????', 
  `presale_start_time` string COMMENT '??????', 
  `presale_end_time` string COMMENT '??????', 
  `main_product_price` double COMMENT '?????', 
  `main_product_num` int COMMENT '?????', 
  `suite_desc` string COMMENT '????', 
  `suite_price` double COMMENT '????', 
  `shortest_delivery_cycle` int COMMENT '??????', 
  `longest_delivery_cycle` int COMMENT '??????', 
  `prepurchase_doc` string COMMENT '????', 
  `status` string COMMENT '????', 
  `is_visible` int COMMENT '????', 
  `is_support_presale` tinyint COMMENT '??????', 
  `is_support_lecode` tinyint COMMENT '??????', 
  `is_large_customer_product` tinyint COMMENT '???????', 
  `suite_sub_title` string COMMENT '?????', 
  `hardware_price_desc` string COMMENT '??????', 
  `content_price_desc` string COMMENT '??????', 
  `settle_message_tip` string COMMENT '??????', 
  `create_user` bigint COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_user` bigint COMMENT '????', 
  `update_time` string COMMENT '????', 
  `is_active` int COMMENT '????', 
  `remark` string COMMENT '??', 
  `bizno` string COMMENT '????', 
  `bizname` string COMMENT '????', 
  `issnapsuite` int COMMENT '??????', 
  `isdepositratio` int COMMENT '??????', 
  `deposit_desc` string COMMENT '????', 
  `mainproductagencyprice` double COMMENT '??????????', 
  `is_diy` tinyint COMMENT '??DIY', 
  `contract_type` tinyint COMMENT '????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pdt_mall_suite_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449197860')
;
CREATE EXTERNAL TABLE `dwd.dwd_pdt_mall_taxrate_all`(
  `taxrate_id` string COMMENT '??????', 
  `product_level1_type` string COMMENT '??????', 
  `product_level1_name` string COMMENT '????????', 
  `product_level2_type` string COMMENT '??????', 
  `product_level2_name` string COMMENT '????????', 
  `product_level3_type` string COMMENT '??????', 
  `product_level3_name` string COMMENT '????????', 
  `sku_no` string COMMENT 'sku_no', 
  `sku_name` string COMMENT 'sku_name', 
  `price` double, 
  `rate` double, 
  `status` string COMMENT '????', 
  `category_flag` string COMMENT '????', 
  `level` int COMMENT '??', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `is_active` int COMMENT '????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pdt_mall_taxrate_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449633744')
;
CREATE EXTERNAL TABLE `dwd.dwd_pdt_shop_product_cate_all`(
  `category_no` string COMMENT '????', 
  `category_name` string COMMENT '????', 
  `parent_no` string COMMENT '???', 
  `if_haschild` tinyint COMMENT '??????', 
  `level` int COMMENT '??', 
  `priority` tinyint COMMENT '???', 
  `status` string COMMENT '????', 
  `create_user_id` bigint COMMENT '????id', 
  `create_user_name` string COMMENT '??????', 
  `create_time` string COMMENT '????', 
  `update_user_id` bigint COMMENT '????id', 
  `update_user_name` string COMMENT '??????', 
  `update_time` string COMMENT '????', 
  `is_active` int COMMENT '????', 
  `remark` string COMMENT '??')
PARTITIONED BY ( 
  `ds` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pdt_shop_product_cate_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447298783')
;
CREATE EXTERNAL TABLE `dwd.dwd_pty_mall_user_active_all`(
  `user_id` bigint COMMENT '??id', 
  `dt` string COMMENT '????', 
  `is_has_pv` string COMMENT '???PV', 
  `is_has_order` string COMMENT '?????', 
  `is_use_cart` string COMMENT '???????', 
  `pv` bigint COMMENT '???', 
  `order_cnt` int COMMENT '????', 
  `order_amount` double COMMENT '????', 
  `max_order_amount` double COMMENT '??????', 
  `paid_order_cnt` int COMMENT '??????', 
  `paid_order_amt` double COMMENT '??????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string COMMENT '????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pty_mall_user_active_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449024755')
;
CREATE TABLE `dwd.dwd_pty_sdk_phone_imei_his_day`(
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
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pty_sdk_phone_imei_his_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448336106')
;
CREATE TABLE `dwd.dwd_pty_sdk_phone_user_his_day`(
  `letv_uid` string, 
  `first_active_date` string, 
  `last_active_date` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_pty_sdk_phone_user_his_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448336104')
;
CREATE EXTERNAL TABLE `dwd.dwd_res_mall_coupon_all`(
  `coupon_no` string COMMENT '?????', 
  `coupon_name` string COMMENT '?????', 
  `coupon_amount` double COMMENT '?????', 
  `use_quota` double COMMENT '????', 
  `coupon_receiver` string COMMENT '??????', 
  `bind_user_id` string COMMENT '????id', 
  `is_exclusive` int COMMENT '????', 
  `effective_time` string COMMENT '????', 
  `expire_time` string COMMENT '????', 
  `binding_time` string COMMENT '????', 
  `coupon_status` int COMMENT '?????', 
  `source` string COMMENT '??', 
  `remark` string COMMENT '??', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `coupon_num_head` string COMMENT '??????', 
  `coupon_batch_id` int COMMENT '?????ID', 
  `coupon_batch_code` string COMMENT '???????', 
  `proposer_id` int COMMENT '???id', 
  `used_amount` double COMMENT '?????', 
  `channel` string COMMENT '??', 
  `rush_id` int COMMENT '??id', 
  `coupon_activity_id` int COMMENT '?????ID', 
  `coupon_activity_name` string COMMENT '???????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_res_mall_coupon_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756199')
;
CREATE EXTERNAL TABLE `dwd.dwd_res_mall_coupon_transaction_all`(
  `order_transaction_id` int, 
  `card_no` string COMMENT '??', 
  `card_name` string COMMENT '???', 
  `use_amount` double COMMENT '????', 
  `user_id` bigint COMMENT '??id', 
  `operate_time` string COMMENT '????', 
  `trans_source_id` string COMMENT '????id', 
  `remark` string COMMENT '??', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_res_mall_coupon_transaction_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1449630733')
;
CREATE EXTERNAL TABLE `dwd.dwd_res_mall_lecode_all`(
  `lcn_id` bigint COMMENT '????id', 
  `lecode_number` string COMMENT '????', 
  `lecode_id` int COMMENT '??id', 
  `lecode_name` string COMMENT '????', 
  `lecode_type` int COMMENT '????', 
  `lecode_batch_id` int COMMENT '????id', 
  `apply_user_id` int COMMENT '?????id', 
  `active_time` string COMMENT '??????', 
  `inactive_time` string COMMENT '??????', 
  `is_used` int COMMENT '?????', 
  `use_time` string COMMENT '????', 
  `use_user_id` string COMMENT '????id', 
  `order_id` string COMMENT '??id', 
  `available_number` int COMMENT '?????', 
  `used_number` int COMMENT '?????', 
  `create_user_id` bigint COMMENT '????id', 
  `create_time` string COMMENT '????', 
  `load_time` string COMMENT '??????')
PARTITIONED BY ( 
  `country_code` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_res_mall_lecode_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447756203')
;
CREATE EXTERNAL TABLE `dwd.dwd_res_mall_mobile_device_all`(
  `imei` string COMMENT 'IMEI?', 
  `imei2` string, 
  `sn` string, 
  `meid` string, 
  `ui_version` string, 
  `software_version` string, 
  `hardware_version` string, 
  `mobile_head_code` string COMMENT '?????', 
  `mainboard_code` string COMMENT '????', 
  `repaird` string, 
  `product_date` string, 
  `shipping_time` string COMMENT '????', 
  `mainboard_sn` string COMMENT '??SN', 
  `produc_plan_num` string COMMENT '??????', 
  `letv_part_number` string, 
  `plan_id` string, 
  `factory_part_number` string COMMENT '????', 
  `sale_area` string, 
  `send_time` string COMMENT '??????', 
  `factory_delivery_time` string, 
  `factory_name` string COMMENT '????', 
  `factory_delivery_id` string, 
  `halfhour_active_time` string COMMENT '?????', 
  `active_time` string COMMENT '??????', 
  `device_status` string COMMENT '????', 
  `halfhour_active_mobile` string COMMENT '???????', 
  `plan_create_user` string COMMENT '??????', 
  `plan_create_time` string, 
  `internal_model` string COMMENT '????', 
  `group_id` string COMMENT '?id', 
  `group_name` string COMMENT '??????', 
  `send_user` string COMMENT '????', 
  `stocking_batch_no` string COMMENT '?????', 
  `external_model` string, 
  `description` string COMMENT '??', 
  `halfhour_active_ip` string COMMENT '?????ip', 
  `active_ip` string COMMENT '??ip', 
  `ip_country_code` string COMMENT '??IP?????', 
  `ip_country_name` string COMMENT '??IP?????', 
  `ip_province_code` string COMMENT '??IP???', 
  `ip_province_name` string COMMENT '??IP?????', 
  `ip_city_code` string COMMENT '??IP???', 
  `ip_city_name` string COMMENT '??IP???', 
  `sale_price` double COMMENT '????', 
  `agency_price` double COMMENT '?????', 
  `load_time` string COMMENT '??????')
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_res_mall_mobile_device_all'
TBLPROPERTIES (
  'COLUMN_STATS_ACCURATE'='true', 
  'numFiles'='1', 
  'numRows'='3151390', 
  'rawDataSize'='1601255427', 
  'totalSize'='108735330', 
  'transient_lastDdlTime'='1449797940')
;
CREATE TABLE `dwd.dwd_res_zhixin_phone_source_day`(
  `imei` string, 
  `imei2` string, 
  `sn` string, 
  `ui_version` string, 
  `software_version` string, 
  `hardware_version` string, 
  `head_code` string, 
  `motherboard_code` string, 
  `repaird` string, 
  `product_date` string, 
  `shipping_date` string, 
  `pcb_sn` string, 
  `production_number` string, 
  `letv_part_number` string, 
  `plan_id` string, 
  `factory_part_number` string, 
  `sale_area` string, 
  `send_time` string, 
  `factory_delivery_time` string, 
  `factory` string, 
  `factory_delivery_id` string, 
  `activation_time` string, 
  `activation_halfhour_time` string, 
  `activation_halfhour_mobile` string, 
  `status` string, 
  `plan_create_username` string, 
  `plan_create_time` string, 
  `model` string, 
  `group_id` string, 
  `send_username` string, 
  `godown_entry_id` string, 
  `description` string, 
  `external_model` string, 
  `group_is_default` string, 
  `group_title` string, 
  `group_description` string, 
  `group_status` string, 
  `phone_model` string, 
  `phone_system` string, 
  `phone_color` string, 
  `phone_storage` string, 
  `order_id` string, 
  `order_province` string, 
  `order_city` string, 
  `order_district` string, 
  `order_address` string, 
  `order_status` string, 
  `order_way` string, 
  `order_create_date` string, 
  `order_pay_date` string, 
  `order_send_date` string, 
  `order_receive_date` string, 
  `order_user_id` string, 
  `order_receiver` string, 
  `order_receiver_mobile` string, 
  `order_storage` string, 
  `order_pm_name` string, 
  `order_pm_provider` string, 
  `order_pm_type` string, 
  `order_pm_description` string, 
  `order_type` string, 
  `quantity` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_res_zhixin_phone_source_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448336100')
;
CREATE EXTERNAL TABLE `dwd.dwd_res_zhixin_phone_twallpaper_day`(
  `wallpaper_id` string, 
  `wallpaper_name` string, 
  `wallpaper_type` string, 
  `size` string, 
  `partner_id` string, 
  `partner_name` string, 
  `status` string, 
  `tag_id` string, 
  `tag_name` string, 
  `tag_cat_id` string, 
  `tag_cat_name` string, 
  `creat_time` string, 
  `update_time` string)
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
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/dwd_res_zhixin_phone_twallpaper_day'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448522882')
;
CREATE EXTERNAL TABLE `dwd.fin_mall_online_payment_his`(
  `payment_id` bigint COMMENT '??id', 
  `maket_place_id` string COMMENT 'maket_place_id', 
  `response_status` string COMMENT '????', 
  `sales_type` string COMMENT '????', 
  `sales_amount` double COMMENT '????', 
  `order_id` string COMMENT '??id', 
  `user_id` bigint COMMENT '??id', 
  `payment_method_id` int COMMENT '????id', 
  `request_amount` double COMMENT '????', 
  `arrive_amount` double COMMENT '????', 
  `generate_time` string COMMENT '????', 
  `arrival_time` string COMMENT '????', 
  `operate_time` string COMMENT '????', 
  `failed_reason` string COMMENT '????', 
  `retry_count` int COMMENT '????', 
  `trade_no` string COMMENT 'trade_no', 
  `inputer` string COMMENT 'inputer', 
  `online_response` string COMMENT '????', 
  `create_time` string COMMENT '????', 
  `update_time` string COMMENT '????', 
  `online_transeq` string COMMENT 'online_transeq', 
  `online_ordernumber` string COMMENT 'online_ordernumber', 
  `start_date` string COMMENT '????')
PARTITIONED BY ( 
  `country_code` string, 
  `end_date` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/dwd.db/fin_mall_online_payment_his'
TBLPROPERTIES (
  'transient_lastDdlTime'='1448956777')
;

