CREATE EXTERNAL TABLE `source.address_shipping_area`(
  `area_id` int, 
  `parent_id` int, 
  `area_name` string, 
  `area_code` string, 
  `postcode` string, 
  `status` int, 
  `sort1` int, 
  `level` int, 
  `wuzhou_area_name` string, 
  `barriocode` string, 
  `barrioname` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/address_shipping_area'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615683')
;
CREATE EXTERNAL TABLE `source.biz_order_out_storage`(
  `id` int, 
  `pid` string, 
  `do_id` string, 
  `order_id` string, 
  `sn_no` string, 
  `out_storage_time` string, 
  `return_time` string, 
  `type` int)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/biz_order_out_storage'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615682')
;
CREATE EXTERNAL TABLE `source.biz_product_code`(
  `pcode` string, 
  `product_name` string, 
  `status` int, 
  `uid` int, 
  `ctime` string, 
  `utime` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/biz_product_code'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615682')
;
CREATE EXTERNAL TABLE `source.biz_products`(
  `pid` string, 
  `pcode` string, 
  `code69` string, 
  `skuid` string, 
  `product_name` string, 
  `product_model` string, 
  `image_src` string, 
  `pro_image` string, 
  `type` int, 
  `price` string, 
  `sale_price` string, 
  `status` int, 
  `biz_id` int, 
  `deliver_rule` string, 
  `islarge` int, 
  `is_advance_booking` int, 
  `is_visible` int, 
  `is_use_lecode` int, 
  `uid` string, 
  `ctime` string, 
  `detail` string, 
  `sell_point_title` string, 
  `min_buy_num` int, 
  `max_buy_num` int, 
  `sale_start` string, 
  `sale_end` string, 
  `inner_sale_price` string, 
  `vip_flag` int, 
  `utime` string, 
  `is_energy_saving` int, 
  `energy_saving_money` string, 
  `is_old_for_new` int, 
  `performance` string, 
  `design` string, 
  `specification` string, 
  `introduction` string, 
  `suttle_weight` string, 
  `rough_weight` string, 
  `volume` string, 
  `eb_id` int, 
  `product_arrival` int, 
  `unit` string, 
  `charge_mode` int, 
  `is_large_customer` int, 
  `applicable_model` string, 
  `lecode_price` string, 
  `weibo_share` string, 
  `share_image` string, 
  `category_id` int, 
  `category_first_id` int)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/biz_products'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615681')
;
CREATE EXTERNAL TABLE `source.biz_storages`(
  `storage_id` int, 
  `storage_name` string, 
  `manager` int, 
  `province` string, 
  `city` string, 
  `address` string, 
  `statusd` int, 
  `uid` int, 
  `ctime` string, 
  `storage_code` string, 
  `link_user` string, 
  `link_mobile` string, 
  `third_code` string, 
  `storage_type` int)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/biz_storages'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615682')
;
CREATE EXTERNAL TABLE `source.cms_cms_push_list`(
  `id` int, 
  `push_time` string, 
  `publish_time` string, 
  `pushplatform` string, 
  `ispublish` int, 
  `content` string, 
  `available` string, 
  `pushtype` int, 
  `isgreen` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/cms_cms_push_list'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691626')
;
CREATE EXTERNAL TABLE `source.customers_c_gender`(
  `gender` string, 
  `genderdescription` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/customers_c_gender'
TBLPROPERTIES (
  'transient_lastDdlTime'='1445569576')
;
CREATE EXTERNAL TABLE `source.customers_customer`(
  `customer_guid` string, 
  `customer_id` string, 
  `idtype` string, 
  `customername` string, 
  `customerid` string, 
  `customertype_id` string, 
  `customerid2` string, 
  `customertype2_id` string, 
  `province_id` string, 
  `city_id` string, 
  `address` string, 
  `birthday` string, 
  `gender` string, 
  `vip` string, 
  `satisfiedrate` string, 
  `tel_1` string, 
  `tel_2` string, 
  `fax` string, 
  `e_mail` string, 
  `mobile` string, 
  `others` string, 
  `stringfield1` string, 
  `stringfield2` string, 
  `stringfield3` string, 
  `stringfield4` string, 
  `stringfield5` string, 
  `stringfield6` string, 
  `blacklist` string, 
  `createdby` string, 
  `createddate` string, 
  `modifiedby` string, 
  `modifieddate` string, 
  `zipcode` string, 
  `stringfield7` string, 
  `stringfield8` string, 
  `stringfield9` string, 
  `stringfield10` string, 
  `stringfield11` string, 
  `stringfield12` string, 
  `stringfield13` string, 
  `stringfield14` string, 
  `stringfield15` string, 
  `stringfield16` string, 
  `stringfield17` string, 
  `stringfield18` string, 
  `stringfield19` string, 
  `stringfield20` string, 
  `owner` string, 
  `area_id` string, 
  `zipcode2` string, 
  `dnis` string, 
  `lastcontactdate` string, 
  `address2` string, 
  `invalid` int, 
  `relcodetable` string, 
  `sq_1` string, 
  `sq_2` string, 
  `sq_3` string, 
  `sq_4` string, 
  `sq_5` string, 
  `sq_6` string, 
  `sq_7` string, 
  `sq_8` string, 
  `sq_9` string, 
  `sq_10` string, 
  `sq_11` string, 
  `sq_12` string, 
  `sq_13` string, 
  `sq_14` string, 
  `sq_15` string, 
  `sq_16` string, 
  `sq_17` string, 
  `sq_18` string, 
  `sq_19` string, 
  `sq_20` string, 
  `sq_21` string, 
  `sq_22` string, 
  `sq_23` string, 
  `sq_24` string, 
  `sq_25` string, 
  `sq_26` string, 
  `sq_27` string, 
  `sq_28` string, 
  `sq_29` string, 
  `sq_30` string, 
  `sq_31` string, 
  `sq_32` string, 
  `sq_33` string, 
  `sq_34` string, 
  `sq_35` string, 
  `sq_36` string, 
  `sq_37` string, 
  `sq_38` string, 
  `sq_39` string, 
  `sq_40` string, 
  `sq_41` string, 
  `sq_42` string, 
  `sq_43` string, 
  `sq_44` string, 
  `sq_45` string, 
  `sq_46` string, 
  `sq_47` string, 
  `sq_48` string, 
  `sq_49` string, 
  `sq_50` string, 
  `event_guid` string, 
  `eventdate` string, 
  `tel_1_flag` int, 
  `tel_2_flag` int, 
  `mobile_flag` int, 
  `others_flag` int, 
  `tel_1_lastcallresult` string, 
  `tel_2_lastcallresult` string, 
  `mobile_lastcallresult` string, 
  `others_lastcallresult` string, 
  `comments` string, 
  `customerlevel` string, 
  `qq` string, 
  `msn` string, 
  `parent_guid` string, 
  `tel_shield_flag` string, 
  `email_shield_flag` string, 
  `fax_shield_flag` string, 
  `sms_shield_flag` string, 
  `address_shield_flag` string, 
  `webchat_nickname` string, 
  `webchat_comment` string, 
  `beobjectivetype_id` string, 
  `ismain` int, 
  `position` string, 
  `open_id` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/customers_customer'
TBLPROPERTIES (
  'transient_lastDdlTime'='1445569576')
;
CREATE EXTERNAL TABLE `source.diysn_product_sn`(
  `id` int, 
  `order_id` string, 
  `product_code` string, 
  `product_name` string, 
  `sn` string, 
  `product_model` string, 
  `config_code` string, 
  `mac` string, 
  `product_group` string, 
  `create_time` string, 
  `create_user` string, 
  `update_time` string, 
  `update_user` string, 
  `is_delete` int)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/diysn_product_sn'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615680')
;
CREATE EXTERNAL TABLE `source.dt_product_temp_pd_product_accessory`(
  `id` bigint, 
  `pid` string, 
  `product_name` string, 
  `product_name_en` string, 
  `skuid` string, 
  `product_code` string, 
  `sale_price` double, 
  `real_price` double, 
  `is_energy_saving` int, 
  `energy_saving_price` double, 
  `product_type` string, 
  `product_model` string, 
  `product_img_src` string, 
  `max_buy_num` int, 
  `min_buy_num` int, 
  `is_key_account` tinyint, 
  `vip_flag` tinyint, 
  `product_show_status` tinyint, 
  `is_large_product` tinyint, 
  `is_sale_flag` tinyint, 
  `is_presale_booking_flag` tinyint, 
  `is_oldfornew_flag` tinyint, 
  `product_weight` string, 
  `product_roughweight` string, 
  `product_volume` string, 
  `product_status` tinyint, 
  `is_eb_flag` tinyint, 
  `eb_id` bigint, 
  `eb_name` string, 
  `product_arrival` tinyint, 
  `arrivalid` string, 
  `product_stock` int, 
  `sales_num` bigint, 
  `storage_id` bigint, 
  `reveal_status` tinyint, 
  `is_uselecode_flag` tinyint, 
  `charge_mode` tinyint, 
  `lecode_price` double, 
  `sales_starttime` string, 
  `sales_endtime` string, 
  `code69` string, 
  `isvisible` tinyint, 
  `is_new_data` tinyint, 
  `is_suite_data` tinyint, 
  `seo_title` string, 
  `seo_keyword` string, 
  `seo_desc` string, 
  `length` double, 
  `width` double, 
  `heigth` double, 
  `charge_mode_name` string, 
  `deliverydays_min` int, 
  `deliverydays_max` int, 
  `suitesubtitle` string, 
  `hardwarepricedescription` string, 
  `contentpricedescription` string, 
  `settlemessagetip` string, 
  `share_image` string, 
  `suite_main_product_id` string, 
  `suite_main_product_name` string, 
  `suite_main_product_num` int, 
  `suite_main_product_price` double, 
  `product_type_name` string, 
  `product_twolevel_type` string, 
  `product_twolevel_type_name` string, 
  `product_threelevel_type` string, 
  `product_threelevel_type_name` string, 
  `cycle_image_src` string, 
  `suite_type` tinyint, 
  `arrival_area_code` string, 
  `is_sku` tinyint, 
  `create_user` bigint, 
  `create_time` string, 
  `update_user` bigint, 
  `update_time` string, 
  `is_update` tinyint, 
  `is_insert` tinyint, 
  `is_delete` tinyint, 
  `applicable_model` string, 
  `servicelife` tinyint, 
  `warmtips` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/dt_product_temp_pd_product_accessory'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615682')
;
CREATE EXTERNAL TABLE `source.dt_product_temp_pd_product_main`(
  `id` bigint, 
  `pid` string, 
  `product_name` string, 
  `product_name_en` string, 
  `skuid` string, 
  `product_code` string, 
  `sale_price` double, 
  `real_price` double, 
  `is_energy_saving` int, 
  `energy_saving_price` double, 
  `product_type` string, 
  `product_model` string, 
  `product_img_src` string, 
  `max_buy_num` int, 
  `min_buy_num` int, 
  `is_key_account` tinyint, 
  `vip_flag` tinyint, 
  `product_show_status` tinyint, 
  `is_large_product` tinyint, 
  `is_sale_flag` tinyint, 
  `is_presale_booking_flag` tinyint, 
  `is_oldfornew_flag` tinyint, 
  `product_weight` string, 
  `product_roughweight` string, 
  `product_volume` string, 
  `product_status` tinyint, 
  `is_eb_flag` tinyint, 
  `eb_id` bigint, 
  `eb_name` string, 
  `product_arrival` tinyint, 
  `arrivalid` string, 
  `product_stock` int, 
  `sales_num` bigint, 
  `storage_id` bigint, 
  `reveal_status` tinyint, 
  `is_uselecode_flag` tinyint, 
  `charge_mode` tinyint, 
  `lecode_price` double, 
  `sales_starttime` string, 
  `sales_endtime` string, 
  `code69` string, 
  `isvisible` tinyint, 
  `is_new_data` tinyint, 
  `is_suite_data` tinyint, 
  `seo_title` string, 
  `seo_keyword` string, 
  `seo_desc` string, 
  `length` double, 
  `width` double, 
  `heigth` double, 
  `charge_mode_name` string, 
  `deliverydays_min` int, 
  `deliverydays_max` int, 
  `suitesubtitle` string, 
  `hardwarepricedescription` string, 
  `contentpricedescription` string, 
  `settlemessagetip` string, 
  `share_image` string, 
  `suite_main_product_id` string, 
  `suite_main_product_name` string, 
  `suite_main_product_num` int, 
  `suite_main_product_price` double, 
  `product_type_name` string, 
  `product_twolevel_type` string, 
  `product_twolevel_type_name` string, 
  `product_threelevel_type` string, 
  `product_threelevel_type_name` string, 
  `cycle_image_src` string, 
  `suite_type` tinyint, 
  `arrival_area_code` string, 
  `is_sku` tinyint, 
  `create_user` bigint, 
  `create_time` string, 
  `update_user` bigint, 
  `update_time` string, 
  `is_update` tinyint, 
  `is_insert` tinyint, 
  `is_delete` tinyint, 
  `applicable_model` string, 
  `servicelife` tinyint, 
  `warmtips` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/dt_product_temp_pd_product_main'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615681')
;
CREATE EXTERNAL TABLE `source.lh_live_api_t_channel`(
  `channel_id` bigint, 
  `channel_name` string, 
  `belongarea` string, 
  `channelclass` string, 
  `belongbrand` int, 
  `demand_id` int, 
  `source_id` int, 
  `channelgroup` string, 
  `clarity_id` int, 
  `dpi` string, 
  `begin_time` string, 
  `end_time` string, 
  `is_used` int, 
  `live_url` string, 
  `src_id` int, 
  `channel_ename` string, 
  `channel_desc` string, 
  `watermarkurl` string, 
  `numerickeys` string, 
  `pcwatermarkurl` string, 
  `defaultstreamname` string, 
  `limittime` int, 
  `pc_on_line` int, 
  `tvonline` int, 
  `mobileonline` int, 
  `orderno` string, 
  `isrecommend` int, 
  `is3d` int, 
  `romonline` int, 
  `ch` string, 
  `ispostxml` int, 
  `jsononline` int, 
  `limitrate` int, 
  `allowlive` int, 
  `ottonline` int, 
  `boxtvonline` int, 
  `boxromonline` int, 
  `cid` string, 
  `4k1` int, 
  `cibn_channelname` string, 
  `cibn_watermarkurl` string, 
  `useonesource` int, 
  `billversion` int, 
  `onesourcestarttime` string, 
  `istest` int, 
  `createtime` string, 
  `lastupdatetime` string, 
  `lastupdateuser` string, 
  `leaders` string, 
  `ispay` int, 
  `childlock` int, 
  `copyright` string, 
  `satellitetvtype` string, 
  `defaultlogo` string, 
  `sublivetype` string, 
  `trilivetype` string, 
  `savetime` int, 
  `timespan` int, 
  `iscopyright` string, 
  `programsource` string, 
  `env_type` string, 
  `ispanoramicview` int, 
  `audio_only` int, 
  `advertisingtime` int, 
  `advertisinginterval` string, 
  `isdolby` int, 
  `questionstarttime` string, 
  `questionendtime` string, 
  `ischat` int, 
  `chatroomnum` string, 
  `quickreply` string, 
  `chatplacard` string, 
  `isquestion` int, 
  `isaudit` int, 
  `bakstorepath` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/lh_live_api_t_channel'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447056055')
;
CREATE EXTERNAL TABLE `source.lh_live_api_t_lh_brand`(
  `id` string, 
  `begintime` string, 
  `endtime` string, 
  `channelid` int, 
  `title` string, 
  `address` string, 
  `description` string, 
  `viewpic` string, 
  `type` int, 
  `vodurl` string, 
  `isplayback` int, 
  `pid` string, 
  `vid` string, 
  `selectid` int, 
  `isconfirm` int, 
  `status` int, 
  `recordingid` string, 
  `specialpageurl` string, 
  `pushplatform` string, 
  `isprecise` int, 
  `backgroundimgurl` string, 
  `moderator` string, 
  `guest` string, 
  `relevancestar` string, 
  `isquestion` int, 
  `questionstarttime` string, 
  `questionendtime` string, 
  `ischat` int, 
  `chatroomnum` string, 
  `quickreply` string, 
  `previd` string, 
  `livewatermarkid` string, 
  `ch` string, 
  `chatplacard` string, 
  `timelyreport` int, 
  `weight` int, 
  `payplatform` string, 
  `screenings` string, 
  `multiprogram` string, 
  `branchtype` string, 
  `creator` string, 
  `createtime` string, 
  `isforbidden` int, 
  `lastupdatetime` string, 
  `isallowforbidden` int, 
  `shortdesc` string, 
  `paybegintime` string, 
  `focuspic` string, 
  `tvbackgroudpic` string, 
  `streamsourcetype` int, 
  `thirdlivepageurl` string, 
  `leword` string, 
  `belongarea` string, 
  `multilive` string, 
  `env_type` string, 
  `ispanoramicview` int, 
  `vipfree` int, 
  `isphotolive` int, 
  `operator` int, 
  `isinteractive` int, 
  `isaudit` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/lh_live_api_t_lh_brand'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447056056')
;
CREATE EXTERNAL TABLE `source.lh_live_api_t_lh_entertainment`(
  `id` string, 
  `begintime` string, 
  `endtime` string, 
  `channelid` int, 
  `title` string, 
  `address` string, 
  `description` string, 
  `vodurl` string, 
  `type` int, 
  `viewpic` string, 
  `isplayback` int, 
  `pid` string, 
  `vid` string, 
  `selectid` int, 
  `isconfirm` int, 
  `status` int, 
  `recordingid` string, 
  `specialpageurl` string, 
  `pushplatform` string, 
  `isprecise` int, 
  `backgroundimgurl` string, 
  `moderator` string, 
  `guest` string, 
  `relevancestar` string, 
  `isquestion` int, 
  `questionstarttime` string, 
  `questionendtime` string, 
  `ischat` int, 
  `chatroomnum` string, 
  `quickreply` string, 
  `previd` string, 
  `livewatermarkid` string, 
  `ch` string, 
  `chatplacard` string, 
  `timelyreport` int, 
  `weight` int, 
  `payplatform` string, 
  `screenings` string, 
  `multiprogram` string, 
  `branchtype` string, 
  `creator` string, 
  `createtime` string, 
  `shortdesc` string, 
  `isallowforbidden` int, 
  `paybegintime` string, 
  `focuspic` string, 
  `tvbackgroudpic` string, 
  `streamsourcetype` int, 
  `thirdlivepageurl` string, 
  `leword` string, 
  `belongarea` string, 
  `multilive` string, 
  `env_type` string, 
  `ispanoramicview` int, 
  `vipfree` int, 
  `isphotolive` int, 
  `operator` int, 
  `isinteractive` int, 
  `isaudit` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/lh_live_api_t_lh_entertainment'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447056056')
;
CREATE EXTERNAL TABLE `source.lh_live_api_t_lh_matchtype`(
  `id` bigint, 
  `name` string, 
  `parentid` string, 
  `isparent` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/lh_live_api_t_lh_matchtype'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447056055')
;
CREATE EXTERNAL TABLE `source.lh_live_api_t_lh_music`(
  `id` string, 
  `begintime` string, 
  `endtime` string, 
  `channelid` int, 
  `title` string, 
  `address` string, 
  `description` string, 
  `vodurl` string, 
  `type` int, 
  `viewpic` string, 
  `isplayback` int, 
  `pid` string, 
  `vid` string, 
  `selectid` int, 
  `isconfirm` int, 
  `status` int, 
  `recordingid` string, 
  `specialpageurl` string, 
  `pushplatform` string, 
  `isprecise` int, 
  `backgroundimgurl` string, 
  `moderator` string, 
  `guest` string, 
  `relevancestar` string, 
  `isquestion` int, 
  `questionstarttime` string, 
  `questionendtime` string, 
  `ischat` int, 
  `chatroomnum` string, 
  `quickreply` string, 
  `previd` string, 
  `livewatermarkid` string, 
  `ch` string, 
  `chatplacard` string, 
  `timelyreport` int, 
  `weight` int, 
  `payplatform` string, 
  `screenings` string, 
  `multiprogram` string, 
  `branchtype` string, 
  `creator` string, 
  `createtime` string, 
  `shortdesc` string, 
  `isallowforbidden` int, 
  `paybegintime` string, 
  `focuspic` string, 
  `tvbackgroudpic` string, 
  `streamsourcetype` int, 
  `thirdlivepageurl` string, 
  `leword` string, 
  `belongarea` string, 
  `multilive` string, 
  `env_type` string, 
  `ispanoramicview` int, 
  `vipfree` int, 
  `isphotolive` int, 
  `operator` int, 
  `isinteractive` int, 
  `isaudit` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/lh_live_api_t_lh_music'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447056056')
;
CREATE EXTERNAL TABLE `source.lh_live_api_t_lh_other`(
  `id` string, 
  `begintime` string, 
  `endtime` string, 
  `channelid` int, 
  `title` string, 
  `address` string, 
  `description` string, 
  `vodurl` string, 
  `viewpic` string, 
  `isplayback` int, 
  `pid` string, 
  `vid` string, 
  `selectid` int, 
  `isconfirm` int, 
  `status` int, 
  `recordingid` string, 
  `specialpageurl` string, 
  `pushplatform` string, 
  `isprecise` int, 
  `backgroundimgurl` string, 
  `moderator` string, 
  `guest` string, 
  `isquestion` int, 
  `questionstarttime` string, 
  `questionendtime` string, 
  `ischat` int, 
  `chatroomnum` string, 
  `quickreply` string, 
  `previd` string, 
  `livewatermarkid` string, 
  `ch` string, 
  `chatplacard` string, 
  `timelyreport` int, 
  `weight` int, 
  `payplatform` string, 
  `screenings` string, 
  `multiprogram` string, 
  `branchtype` string, 
  `creator` string, 
  `createtime` string, 
  `type` int, 
  `shortdesc` string, 
  `isallowforbidden` int, 
  `paybegintime` string, 
  `focuspic` string, 
  `tvbackgroudpic` string, 
  `streamsourcetype` int, 
  `thirdlivepageurl` string, 
  `leword` string, 
  `belongarea` string, 
  `multilive` string, 
  `env_type` string, 
  `ispanoramicview` int, 
  `vipfree` int, 
  `isphotolive` int, 
  `operator` int, 
  `isinteractive` int, 
  `isaudit` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/lh_live_api_t_lh_other'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447056056')
;
CREATE EXTERNAL TABLE `source.lh_live_api_t_lh_sports`(
  `id` string, 
  `begintime` string, 
  `endtime` string, 
  `season` string, 
  `level1` string, 
  `level2` string, 
  `channelid` int, 
  `title` string, 
  `description` string, 
  `shortdesc` string, 
  `vodurl` string, 
  `viewpic` string, 
  `pid` string, 
  `vid` string, 
  `match` string, 
  `selectid` int, 
  `isconfirm` int, 
  `home` string, 
  `guest` string, 
  `homescore` string, 
  `guestscore` string, 
  `status` int, 
  `recordingid` string, 
  `livestudiolink` string, 
  `platform` string, 
  `level2imgurl` string, 
  `homeimgurl` string, 
  `guestimgurl` string, 
  `isvs` int, 
  `isprecise` int, 
  `backgroundimgurl` string, 
  `isquestion` int, 
  `questionstarttime` string, 
  `questionendtime` string, 
  `ischat` int, 
  `chatroomnum` string, 
  `quickreply` string, 
  `previd` string, 
  `homedisplay` int, 
  `livewatermarkid` string, 
  `commentarylanguage` string, 
  `ch` string, 
  `chatplacard` string, 
  `timelyreport` int, 
  `weight` int, 
  `payplatform` string, 
  `screenings` string, 
  `multiprogram` string, 
  `branchtype` string, 
  `creator` string, 
  `createtime` string, 
  `isallowforbidden` int, 
  `paybegintime` string, 
  `focuspic` string, 
  `tvbackgroudpic` string, 
  `streamsourcetype` int, 
  `thirdlivepageurl` string, 
  `leword` string, 
  `belongarea` string, 
  `multilive` string, 
  `env_type` string, 
  `ispanoramicview` int, 
  `eventid` string, 
  `vipfree` int, 
  `isphotolive` int, 
  `operator` int, 
  `isinteractive` int, 
  `isaudit` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/lh_live_api_t_lh_sports'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447056055')
;
CREATE EXTERNAL TABLE `source.lh_live_api_t_pb_playbill_item`(
  `id` bigint, 
  `channel_id` bigint, 
  `play_time` string, 
  `end_time` string, 
  `programtype` int, 
  `livechannelid` bigint, 
  `pid` string, 
  `aid` string, 
  `belongarea` string, 
  `vid` string, 
  `duration` string, 
  `title` string, 
  `short_desc` string, 
  `description` string, 
  `view_type` string, 
  `type` string, 
  `releasedate` string, 
  `vod_url` string, 
  `view_pic` string, 
  `copyright` string, 
  `isdisplay` int, 
  `isrecommend` int, 
  `isfreeze` int, 
  `isrecorder` int, 
  `livewatermarkname` string, 
  `allowtimeshift` int, 
  `ispay` int, 
  `letvplaybilltheatericoid` bigint, 
  `multiprogram` string, 
  `branchtype` string, 
  `roomno` string, 
  `episode` string, 
  `namecn` string, 
  `liveid` string, 
  `env_type` string, 
  `mediaid` string, 
  `episodenumber` string, 
  `airtype` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/lh_live_api_t_pb_playbill_item'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447056057')
;
CREATE EXTERNAL TABLE `source.mclient_mclient_apppartner`(
  `id` int, 
  `pid` string, 
  `name` string, 
  `intro` string, 
  `order1` int, 
  `isdel` string, 
  `uptime` string, 
  `ctime` string, 
  `ratio` int, 
  `partner_price` string, 
  `department_id` int, 
  `user_id` int, 
  `code` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mclient_mclient_apppartner'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691589')
;
CREATE EXTERNAL TABLE `source.mclient_mclient_nativemodel`(
  `id` int, 
  `name` string, 
  `code` string, 
  `partner_code` string, 
  `intro` string, 
  `isdel` string, 
  `ctime` string, 
  `uptime` string, 
  `order1` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mclient_mclient_nativemodel'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691589')
;
CREATE EXTERNAL TABLE `source.mms_advert`(
  `id` int, 
  `name` string, 
  `name_hk` string, 
  `name_tw` string, 
  `name_en` string, 
  `start_time` string, 
  `start_word` string, 
  `brand_website` string, 
  `brand_blog` string, 
  `description` string, 
  `description_hk` string, 
  `description_tw` string, 
  `description_en` string, 
  `head_pic` string, 
  `head_pic_web` string, 
  `head_pic_34` string, 
  `head_pic_web_34` string, 
  `back_pic` string, 
  `back_pic_web` string, 
  `area` int, 
  `create_time` string, 
  `create_user` int, 
  `update_time` string, 
  `update_user` int, 
  `le_id` int, 
  `le_name` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_advert'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691575')
;
CREATE EXTERNAL TABLE `source.mms_con_album_info`(
  `id` bigint, 
  `album_type` int, 
  `source_id` int, 
  `name_cn` string, 
  `name_pinyin_abb` string, 
  `name_en` string, 
  `sub_title` string, 
  `version_title` string, 
  `alias` string, 
  `short_desc` string, 
  `description` string, 
  `tag` string, 
  `score` string, 
  `category` int, 
  `sub_category` string, 
  `download_platform` string, 
  `play_platform` string, 
  `pay_platform` string, 
  `status` int, 
  `deleted` int, 
  `remark` string, 
  `is_end` int, 
  `is_height` int, 
  `area` string, 
  `copyright_type` int, 
  `copyright_start` string, 
  `copyright_end` string, 
  `copyright_company` string, 
  `duration` int, 
  `release_date` string, 
  `letv_release_date` string, 
  `douban_id` string, 
  `imdb` string, 
  `episode` int, 
  `play_status` string, 
  `vip_watching_focus` string, 
  `maker_company` string, 
  `directory1` string, 
  `actor` string, 
  `starring` string, 
  `starring_play` string, 
  `starring_play_pic` string, 
  `starring_desc` string, 
  `pic_collections` string, 
  `pic_original` string, 
  `screen_writer` string, 
  `maker` string, 
  `letv_make_style` int, 
  `letv_produce_style` int, 
  `film_base_type` int, 
  `r_company` string, 
  `official_url` string, 
  `language` int, 
  `fit_age` string, 
  `cast1` string, 
  `dub` string, 
  `producer` string, 
  `compere` string, 
  `instructor` string, 
  `music_authors` string, 
  `issue_company` string, 
  `music_compose` string, 
  `play_tv` string, 
  `supervise` string, 
  `originator` string, 
  `first_play_time` string, 
  `school` string, 
  `is_pay` int, 
  `relation_id` string, 
  `is_homemade` int, 
  `on_time` string, 
  `off_time` string, 
  `play_control_platform_cntv` int, 
  `play_control_platform_huashu` int, 
  `play_control_platform_guoguang` int, 
  `user_id` bigint, 
  `update_uid` bigint, 
  `create_time` string, 
  `update_time` string, 
  `param1` int, 
  `param2` string, 
  `variety_show` int, 
  `appid` string, 
  `video_follow_time` string, 
  `content_rating` int, 
  `can_search` int, 
  `clone_source` int, 
  `first_play_tv` string, 
  `repeat_play_tv` string, 
  `site` string, 
  `ext_data` string, 
  `style` string, 
  `coop_platform` string, 
  `audio_info` string, 
  `le_id` string, 
  `album_pic` string, 
  `sub_le_id` string, 
  `risk_level` int, 
  `play_mark` int, 
  `category_ext` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_con_album_info'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691575')
;
CREATE EXTERNAL TABLE `source.mms_con_album_info_hk`(
  `id` bigint, 
  `album_type` int, 
  `source_id` int, 
  `name_cn` string, 
  `name_pinyin_abb` string, 
  `name_en` string, 
  `sub_title` string, 
  `version_title` string, 
  `alias` string, 
  `short_desc` string, 
  `description` string, 
  `tag` string, 
  `score` string, 
  `category` int, 
  `sub_category` string, 
  `download_platform` string, 
  `play_platform` string, 
  `pay_platform` string, 
  `status` int, 
  `deleted` int, 
  `remark` string, 
  `is_end` int, 
  `is_height` int, 
  `area` string, 
  `copyright_type` int, 
  `copyright_start` string, 
  `copyright_end` string, 
  `copyright_company` string, 
  `duration` int, 
  `release_date` string, 
  `letv_release_date` string, 
  `douban_id` string, 
  `imdb` string, 
  `episode` int, 
  `play_status` string, 
  `vip_watching_focus` string, 
  `maker_company` string, 
  `directory1` string, 
  `actor` string, 
  `starring` string, 
  `starring_play` string, 
  `starring_play_pic` string, 
  `starring_desc` string, 
  `pic_collections` string, 
  `pic_original` string, 
  `screen_writer` string, 
  `maker` string, 
  `letv_make_style` int, 
  `letv_produce_style` int, 
  `film_base_type` int, 
  `r_company` string, 
  `official_url` string, 
  `language` int, 
  `fit_age` string, 
  `cast1` string, 
  `dub` string, 
  `producer` string, 
  `compere` string, 
  `instructor` string, 
  `music_authors` string, 
  `issue_company` string, 
  `music_compose` string, 
  `play_tv` string, 
  `supervise` string, 
  `originator` string, 
  `first_play_time` string, 
  `school` string, 
  `is_pay` int, 
  `relation_id` string, 
  `is_homemade` int, 
  `on_time` string, 
  `off_time` string, 
  `play_control_platform_cntv` int, 
  `play_control_platform_huashu` int, 
  `play_control_platform_guoguang` int, 
  `user_id` bigint, 
  `update_uid` bigint, 
  `create_time` string, 
  `update_time` string, 
  `param1` int, 
  `param2` string, 
  `variety_show` int, 
  `appid` string, 
  `video_follow_time` string, 
  `content_rating` int, 
  `can_search` int, 
  `clone_source` int, 
  `first_play_tv` string, 
  `repeat_play_tv` string, 
  `site` string, 
  `ext_data` string, 
  `style` string, 
  `coop_platform` string, 
  `audio_info` string, 
  `le_id` string, 
  `album_pic` string, 
  `sub_le_id` string, 
  `risk_level` int, 
  `play_mark` int, 
  `category_ext` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_con_album_info_hk'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691601')
;
CREATE EXTERNAL TABLE `source.mms_con_audio_album_info`(
  `id` bigint, 
  `xiami_id` bigint, 
  `le_id` string, 
  `source_id` int, 
  `category` int, 
  `name_cn` string, 
  `sub_title` string, 
  `description` string, 
  `album_type` int, 
  `name_pinyin_abb` string, 
  `name_en` string, 
  `download_platform` string, 
  `play_platform` string, 
  `area` string, 
  `language` string, 
  `copyright_type` int, 
  `release_date` string, 
  `issue_company` string, 
  `auto_pic_prefix` string, 
  `pic_collections` string, 
  `pic_original` string, 
  `style` string, 
  `artist_name` string, 
  `user_id` bigint, 
  `update_uid` bigint, 
  `create_time` string, 
  `update_time` string, 
  `deleted` int, 
  `ext_data` string, 
  `status` int, 
  `xiami_data` string, 
  `tag` string, 
  `third_id` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_con_audio_album_info'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691614')
;
CREATE EXTERNAL TABLE `source.mms_con_audio_info`(
  `id` bigint, 
  `xiami_id` bigint, 
  `pid` bigint, 
  `mid` bigint, 
  `le_id` string, 
  `source_id` int, 
  `category` int, 
  `name_cn` string, 
  `sub_title` string, 
  `description` string, 
  `porder` int, 
  `name_pinyin_abb` string, 
  `name_en` string, 
  `download_platform` string, 
  `play_platform` string, 
  `temp_play_platform` string, 
  `release_date` string, 
  `duration` int, 
  `area` string, 
  `language` int, 
  `audio_file` string, 
  `lyric_file` string, 
  `lyric_text` string, 
  `style` string, 
  `compose` string, 
  `authors` string, 
  `arranger` string, 
  `singer` string, 
  `maker_company` string, 
  `compress_mode` int, 
  `copyright_type` int, 
  `user_id` bigint, 
  `update_uid` bigint, 
  `create_time` string, 
  `update_time` string, 
  `deleted` int, 
  `ext_data` string, 
  `xiami_data` string, 
  `tag` string, 
  `auto_pic_prefix` string, 
  `pic_collections` string, 
  `pic_original` string, 
  `third_id` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_con_audio_info'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691614')
;
CREATE EXTERNAL TABLE `source.mms_con_video_info`(
  `id` bigint, 
  `source_id` int, 
  `video_type` int, 
  `pid` bigint, 
  `porder` int, 
  `mid` string, 
  `name_cn` string, 
  `name_pinyin_abb` string, 
  `name_en` string, 
  `alias` string, 
  `sub_title` string, 
  `short_desc` string, 
  `description` string, 
  `tag` string, 
  `category` int, 
  `sub_category` string, 
  `episode` string, 
  `btime` int, 
  `etime` int, 
  `watching_focus` string, 
  `ad_point` string, 
  `copyright_type` int, 
  `copyright_start` string, 
  `copyright_end` string, 
  `copyright_company` string, 
  `download_platform` string, 
  `play_platform` string, 
  `pay_platform` string, 
  `duration` int, 
  `schedule_publish_date` string, 
  `status` int, 
  `viki` string, 
  `deleted` int, 
  `remark` string, 
  `score` string, 
  `pic_original` string, 
  `relative_content` string, 
  `release_date` string, 
  `first_play_time` string, 
  `area` string, 
  `school` string, 
  `starring` string, 
  `startring_play` string, 
  `directory1` string, 
  `actor` string, 
  `actor_play` string, 
  `official_url` string, 
  `language` int, 
  `single_name` string, 
  `style` string, 
  `instructor` string, 
  `compere` string, 
  `guest` string, 
  `singer` string, 
  `singer_type` string, 
  `music_authors` string, 
  `maker` string, 
  `record_company` string, 
  `issue_company` string, 
  `team` string, 
  `pre` int, 
  `quality` string, 
  `is_homemade` int, 
  `direction` int, 
  `logo_num` int, 
  `transcode_tag` string, 
  `play_tv` string, 
  `on_time` string, 
  `off_time` string, 
  `play_control_platform_cntv` int, 
  `play_control_platform_huashu` int, 
  `play_control_platform_guoguang` int, 
  `create_time` string, 
  `update_time` string, 
  `user_id` bigint, 
  `update_uid` bigint, 
  `temp_play_platform` string, 
  `param1` int, 
  `param2` string, 
  `appid` string, 
  `folkart_type` int, 
  `video_pic` string, 
  `fit_age` string, 
  `content_rating` int, 
  `clone_source` int, 
  `can_search` int, 
  `pic_upload` string, 
  `recommend` string, 
  `activity_id` string, 
  `name_tw` string, 
  `drm_flag` string, 
  `site` string, 
  `is_first_look` int, 
  `ext_data` string, 
  `source_site` string, 
  `coop_platform` string, 
  `le_id` string, 
  `auto_video_pic` string, 
  `is_pay` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_con_video_info'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691575')
;
CREATE EXTERNAL TABLE `source.mms_con_video_info_hk`(
  `id` bigint, 
  `source_id` int, 
  `video_type` int, 
  `pid` bigint, 
  `porder` int, 
  `mid` string, 
  `name_cn` string, 
  `name_pinyin_abb` string, 
  `name_en` string, 
  `alias` string, 
  `sub_title` string, 
  `short_desc` string, 
  `description` string, 
  `tag` string, 
  `category` int, 
  `sub_category` string, 
  `episode` string, 
  `btime` int, 
  `etime` int, 
  `watching_focus` string, 
  `ad_point` string, 
  `copyright_type` int, 
  `copyright_start` string, 
  `copyright_end` string, 
  `copyright_company` string, 
  `download_platform` string, 
  `play_platform` string, 
  `pay_platform` string, 
  `duration` int, 
  `schedule_publish_date` string, 
  `status` int, 
  `viki` string, 
  `deleted` int, 
  `remark` string, 
  `score` string, 
  `pic_original` string, 
  `relative_content` string, 
  `release_date` string, 
  `first_play_time` string, 
  `area` string, 
  `school` string, 
  `starring` string, 
  `startring_play` string, 
  `directory1` string, 
  `actor` string, 
  `actor_play` string, 
  `official_url` string, 
  `language` int, 
  `single_name` string, 
  `style` string, 
  `instructor` string, 
  `compere` string, 
  `guest` string, 
  `singer` string, 
  `singer_type` string, 
  `music_authors` string, 
  `maker` string, 
  `record_company` string, 
  `issue_company` string, 
  `team` string, 
  `pre` int, 
  `quality` string, 
  `is_homemade` int, 
  `direction` int, 
  `logo_num` int, 
  `transcode_tag` string, 
  `play_tv` string, 
  `on_time` string, 
  `off_time` string, 
  `play_control_platform_cntv` int, 
  `play_control_platform_huashu` int, 
  `play_control_platform_guoguang` int, 
  `create_time` string, 
  `update_time` string, 
  `user_id` bigint, 
  `update_uid` bigint, 
  `temp_play_platform` string, 
  `param1` int, 
  `param2` string, 
  `appid` string, 
  `folkart_type` int, 
  `video_pic` string, 
  `fit_age` string, 
  `content_rating` int, 
  `clone_source` int, 
  `can_search` int, 
  `pic_upload` string, 
  `recommend` string, 
  `activity_id` string, 
  `name_tw` string, 
  `drm_flag` string, 
  `site` string, 
  `is_first_look` int, 
  `ext_data` string, 
  `source_site` string, 
  `coop_platform` string, 
  `le_id` string, 
  `auto_video_pic` string, 
  `is_pay` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_con_video_info_hk'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691602')
;
CREATE EXTERNAL TABLE `source.mms_con_video_match_relation`(
  `id` int, 
  `vid` bigint, 
  `match_id` int, 
  `year` int, 
  `player_ids` string, 
  `team_id` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_con_video_match_relation'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691576')
;
CREATE EXTERNAL TABLE `source.mms_db_dictionary_info`(
  `id` bigint, 
  `value` string, 
  `type_id` int, 
  `vrs_dic_id` string, 
  `parent_value_id` bigint, 
  `channel_id` string, 
  `property_object` int, 
  `level` int, 
  `description` string, 
  `deleted` int, 
  `create_time` string, 
  `update_time` string, 
  `user_id` bigint, 
  `update_uid` bigint, 
  `value_hk` string, 
  `value_tw` string, 
  `value_en` string, 
  `site` string, 
  `description_hk` string, 
  `description_tw` string, 
  `description_en` string, 
  `audio_channel_id` string, 
  `audio_property_object` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_db_dictionary_info'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691576')
;
CREATE EXTERNAL TABLE `source.mms_db_star`(
  `id` int, 
  `name` string, 
  `englishname` string, 
  `othername` string, 
  `truename` string, 
  `birthday` string, 
  `gender` int, 
  `area` int, 
  `description` string, 
  `display` int, 
  `isactor` int, 
  `isdirector` int, 
  `is_avail` int, 
  `professional` string, 
  `status` string, 
  `post_s1` string, 
  `post_s2` string, 
  `post_s3` string, 
  `post_h1` string, 
  `post_h2` string, 
  `twitter` string, 
  `deleted` int, 
  `isend` int, 
  `pushflag` string, 
  `post_origin` string, 
  `pinyinabb` string, 
  `create_time` string, 
  `update_time` string, 
  `user_id` bigint, 
  `update_uid` bigint, 
  `name_hk` string, 
  `name_tw` string, 
  `description_hk` string, 
  `description_tw` string, 
  `description_en` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_db_star'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691576')
;
CREATE EXTERNAL TABLE `source.mms_db_tv`(
  `id` int, 
  `tv` string, 
  `englishname` string, 
  `channel` string, 
  `short_desc` string, 
  `menu` string, 
  `deleted` int, 
  `live` int, 
  `hot_album` string, 
  `post_s1` string, 
  `post_s2` string, 
  `post_s3` string, 
  `post_s4` string, 
  `post_s5` string, 
  `post_h1` string, 
  `post_h2` string, 
  `post_h3` string, 
  `post_origin` string, 
  `create_time` string, 
  `update_time` string, 
  `user_id` bigint, 
  `update_uid` bigint, 
  `tv_hk` string, 
  `short_desc_hk` string, 
  `hot_album_hk` string, 
  `tv_en` string, 
  `tv_tw` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_db_tv'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691576')
;
CREATE EXTERNAL TABLE `source.mms_dic_config`(
  `id` int, 
  `dic_name` string, 
  `dic_key` string, 
  `group_id` int, 
  `status` int, 
  `s_key` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_dic_config'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691576')
;
CREATE EXTERNAL TABLE `source.mms_focus_event`(
  `id` int, 
  `name` string, 
  `trad_name` string, 
  `en_name` string, 
  `other_name` string, 
  `description` string, 
  `en_description` string, 
  `trad_description` string, 
  `head_pic` string, 
  `head_pic_web` string, 
  `head_pic_34` string, 
  `head_pic_web_34` string, 
  `back_pic` string, 
  `back_pic_web` string, 
  `create_time` string, 
  `create_user` int, 
  `update_time` string, 
  `update_user` int, 
  `le_id` int, 
  `le_name` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_focus_event'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691577')
;
CREATE EXTERNAL TABLE `source.mms_le_thesaurus`(
  `id` int, 
  `name` string, 
  `type` string, 
  `status` int, 
  `pinyinabb` string, 
  `pic_url` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_le_thesaurus'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691577')
;
CREATE EXTERNAL TABLE `source.mms_star_info`(
  `id` int, 
  `name` string, 
  `name_en` string, 
  `othername` string, 
  `truename` string, 
  `birthday` string, 
  `gender` int, 
  `area` int, 
  `description` string, 
  `display` int, 
  `status` string, 
  `post_s1` string, 
  `post_s2` string, 
  `post_s3` string, 
  `twitter` string, 
  `deleted` int, 
  `isend` int, 
  `post_origin` string, 
  `pinyinabb` string, 
  `create_time` string, 
  `update_time` string, 
  `create_uid` int, 
  `update_uid` int, 
  `name_hk` string, 
  `name_tw` string, 
  `description_hk` string, 
  `description_tw` string, 
  `description_en` string, 
  `le_id` int, 
  `le_name` string, 
  `back_pic` string, 
  `back_pic_web` string, 
  `xiami_id` string, 
  `professional` string, 
  `head_pic_34` string, 
  `head_pic_web_34` string, 
  `logo` string, 
  `description_xm` string, 
  `company` string, 
  `source` string, 
  `artist_name_xiami` string, 
  `english_name_xiami` string, 
  `star_pic_info` string, 
  `usercenterid` bigint)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_star_info'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691577')
;
CREATE EXTERNAL TABLE `source.mms_works`(
  `id` int, 
  `name` string, 
  `trad_name` string, 
  `en_name` string, 
  `other_name` string, 
  `description` string, 
  `en_description` string, 
  `trad_description` string, 
  `head_pic` string, 
  `head_pic_web` string, 
  `head_pic_34` string, 
  `head_pic_web_34` string, 
  `back_pic` string, 
  `back_pic_web` string, 
  `type` int, 
  `area` int, 
  `create_time` string, 
  `create_user` int, 
  `update_time` string, 
  `update_user` int, 
  `le_id` int, 
  `le_name` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/mms_works'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446691577')
;
CREATE EXTERNAL TABLE `source.orders_appointment_user`(
  `au_id` string, 
  `rush_id` int, 
  `user_id` string, 
  `mobile` string, 
  `email` string, 
  `user_name` string, 
  `appointment_num` int, 
  `status` int, 
  `create_at` string, 
  `update_at` string, 
  `showlove` int, 
  `approve_status` int, 
  `remark` string, 
  `approve_man` string, 
  `approve_time` string, 
  `cps_id` string, 
  `mark` string, 
  `way_source` int)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/orders_appointment_user'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615681')
;
CREATE EXTERNAL TABLE `source.orders_order_items`(
  `order_item_id` int, 
  `order_id` string, 
  `shipment_id` string, 
  `shipment_name` string, 
  `product_id` string, 
  `product_name` string, 
  `agency_product_price` double, 
  `product_price` double, 
  `final_price` double, 
  `promotion_id` string, 
  `promotion_subtype` int, 
  `promotion_source` string, 
  `discount` double, 
  `quantity_in_group` int, 
  `quantity` int, 
  `reduce1` double, 
  `points` int, 
  `points_send` int, 
  `coupons` int, 
  `coupons_send` int, 
  `is_gift` int, 
  `is_virtual` int, 
  `comment_flag` int, 
  `show_flag` int, 
  `product_weight` string, 
  `status` int, 
  `is_major` int, 
  `create_at` string, 
  `update_at` string, 
  `purchase_limit` int, 
  `cost_price` double, 
  `is_energy_saving` int, 
  `es_amount` double, 
  `group_product_id` int, 
  `pcode` string, 
  `delivery_cycle_days` int, 
  `delivery_cycle_days_e` int, 
  `comment_level` int, 
  `priority` int, 
  `product_type` string, 
  `product_twolevel_type` string, 
  `product_threelevel_type` string, 
  `is_main` int, 
  `cupon_number` string, 
  `coupon_divide` double, 
  `invoice_product_price` double, 
  `is_required` int, 
  `coupon_amount` double, 
  `sub_order_id` string, 
  `seller_id` int, 
  `storage_id` int, 
  `suite_type` int, 
  `shipping_fee` double, 
  `order_type` int, 
  `real_promotion_id` int, 
  `real_promotion_type` int, 
  `original_price` double, 
  `contract_type` int, 
  `rush_id` int, 
  `physical_storage_id` int, 
  `order_twolevel_type` int, 
  `item_extend_id` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/orders_order_items'
TBLPROPERTIES (
  'transient_lastDdlTime'='1442394869')
;
CREATE EXTERNAL TABLE `source.orders_order_shipments`(
  `shipment_id` string, 
  `order_id` string, 
  `shipment_name` string, 
  `shipment_status` int, 
  `bills_no` string, 
  `create_at` string, 
  `update_at` string, 
  `ec_name` string, 
  `ec_id` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/orders_order_shipments'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615682')
;
CREATE EXTERNAL TABLE `source.orders_order_status`(
  `order_status_id` int, 
  `name` string, 
  `status_type` int, 
  `description` string, 
  `create_at` string, 
  `update_at` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/orders_order_status'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615681')
;
CREATE EXTERNAL TABLE `source.orders_order_transaction_logs`(
  `order_transaction_id` int, 
  `order_id` string, 
  `transaction_operator` string, 
  `operate_type` int, 
  `log_content` string, 
  `log_type` int, 
  `transaction_description` string, 
  `operate_date` string, 
  `deal_date` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/orders_order_transaction_logs'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615682')
;
CREATE EXTERNAL TABLE `source.orders_order_type`(
  `order_type` int, 
  `name` string, 
  `status_type` int, 
  `description` string, 
  `create_at` string, 
  `update_at` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/orders_order_type'
TBLPROPERTIES (
  'transient_lastDdlTime'='1442394869')
;
CREATE EXTERNAL TABLE `source.orders_order_way_dict`(
  `ow_id` int, 
  `order_way_val` int, 
  `order_way_cname` string, 
  `order_way_type` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/orders_order_way_dict'
TBLPROPERTIES (
  'transient_lastDdlTime'='1442394870')
;
CREATE EXTERNAL TABLE `source.orders_orders`(
  `order_id` string, 
  `user_id` string, 
  `order_status_id` int, 
  `storage_id` int, 
  `receiver` string, 
  `country_id` int, 
  `province_id` int, 
  `city_id` int, 
  `district_id` int, 
  `zip_code` string, 
  `address` string, 
  `address_arrive_flag` int, 
  `payment_method_id` string, 
  `agency_order_amount` double, 
  `agency_paid_amount` double, 
  `order_amount` double, 
  `products_amount` double, 
  `discount_amount` double, 
  `shipping_fee` double, 
  `paid_amount` double, 
  `refund_amount` double, 
  `shipping_option` int, 
  `shipping_phone_confirm` int, 
  `cod_method` int, 
  `is_wjbank` int, 
  `shipping_method_id` int, 
  `order_desc` string, 
  `extra_message` string, 
  `split_package` int, 
  `is_invoice` int, 
  `invoice_title` string, 
  `invoice_type` int, 
  `invoice_cotent` int, 
  `default_config` int, 
  `inviter_info` string, 
  `order_way` int, 
  `promotion_id` string, 
  `promotion_price` double, 
  `promotion_points` int, 
  `propotion_points_send` int, 
  `promotion_coupons` int, 
  `promotion_coupons_send` int, 
  `promotion_free_shipping` int, 
  `create_at` string, 
  `update_at` string, 
  `mobile` string, 
  `telphone` string, 
  `order_type` int, 
  `approve_content` string, 
  `reject_status` int, 
  `reject_date` string, 
  `user_agent` string, 
  `on_amount` double, 
  `scan_flag` int, 
  `associate_id` string, 
  `mutex_buss_no` string, 
  `deliver_time` string, 
  `login_type` int, 
  `is_sms` int, 
  `is_energy_saving` int, 
  `es_amount` double, 
  `energy_subs_bm` int, 
  `energy_subs_name` string, 
  `energy_subs_cert` string, 
  `order_arrival_date` string, 
  `seller_id` int, 
  `pre_pay_percent` string, 
  `produce_status` int, 
  `rush_id` int, 
  `lmcode` string, 
  `home_installation` int, 
  `e_mail` string, 
  `weibo` string, 
  `weixin` string, 
  `groupid` int, 
  `is_send_gift` int, 
  `third_request` int, 
  `rush_at` string, 
  `description` string, 
  `is_pay` int, 
  `pay_at` string, 
  `buyed_user` int, 
  `out_order_id` string, 
  `oa_apply_no` string, 
  `ship_ready_finish` int, 
  `s_mobile` string, 
  `s_telphone` string, 
  `valid_mobile` string, 
  `valid_name` string, 
  `virtual_transportation` int, 
  `apply_refund_status` int, 
  `financial_no` string, 
  `contract_no` string, 
  `sales_dept` int, 
  `order_buss_flag` int, 
  `bills_no` string, 
  `pro_cycle_time` string, 
  `pro_cycle_operate_type` int, 
  `pro_cycle_time_e` string, 
  `is_handled_reward` string, 
  `rebates_amount` double, 
  `is_diy_order` int, 
  `alipay_hb_amount` double, 
  `invoice_comments` string, 
  `invoice_shipping_fee` double, 
  `invoice_amount` double, 
  `company_id` int, 
  `store_id` int, 
  `split_flag` int, 
  `parent_order_id` string, 
  `suite_type` int, 
  `coupon_amount` double, 
  `contract_type` int, 
  `app_cpsid` string, 
  `order_channel` string, 
  `speedup_fee` double, 
  `physical_storage_id` int, 
  `order_twolevel_type` int, 
  `pay_end_time` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/orders_orders'
TBLPROPERTIES (
  'transient_lastDdlTime'='1442394869')
;
CREATE EXTERNAL TABLE `source.orders_rush_buy`(
  `rush_id` int, 
  `rush_name` string, 
  `rush_type` int, 
  `appointment_maxnum` int, 
  `appointment_maxnum_per` int, 
  `amt_starttime` string, 
  `amt_endtime` string, 
  `rush_maxnum` int, 
  `rush_maxnum_per` int, 
  `rush_starttime` string, 
  `rush_endtime` string, 
  `product_id` string, 
  `product_name` string, 
  `status` int, 
  `create_at` string, 
  `update_at` string, 
  `sms_time` string, 
  `cancelorder_time` string, 
  `is_need_approve` int, 
  `cancelorder_datetype` int, 
  `cancel_hour` int, 
  `multiple_num` int, 
  `activity_picpath` string, 
  `amt_starttime_s` string, 
  `amt_endtime_s` string, 
  `rush_starttime_s` string, 
  `rush_endtime_s` string, 
  `order_num` int, 
  `is_false` int, 
  `short_prodname` string, 
  `remark` string, 
  `rushinfo` string, 
  `promotion_id` string, 
  `rush_times` int, 
  `check_mobile` int, 
  `parent_rush_id` int, 
  `valid_score` int, 
  `group_id` int, 
  `check_scalper` int, 
  `check_code` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/orders_rush_buy'
TBLPROPERTIES (
  'transient_lastDdlTime'='1443518619')
;
CREATE EXTERNAL TABLE `source.passport_user_baseinfo`(
  `uid` int, 
  `username` string, 
  `status` int, 
  `gender` int, 
  `qq` int, 
  `registip` string, 
  `registtime` string, 
  `lastmodifytime` string, 
  `birthday` string, 
  `nickname` string, 
  `msn` string, 
  `registservice` string, 
  `email` string, 
  `mobile` string, 
  `province` string, 
  `city` string, 
  `postcode` string, 
  `address` string, 
  `picture` string, 
  `name` string, 
  `lastmodifypwdtime` int, 
  `education` string, 
  `industry` string, 
  `job` string, 
  `income` string, 
  `param1` int, 
  `param2` string, 
  `param3` string, 
  `param4` int, 
  `param5` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/passport_user_baseinfo'
TBLPROPERTIES (
  'transient_lastDdlTime'='1442388300')
;
CREATE EXTERNAL TABLE `source.passport_user_connect_view`(
  `connectid` int, 
  `uid` bigint, 
  `oauth_uid` string, 
  `nickname` string, 
  `appid` int, 
  `config` string, 
  `from1` int, 
  `addtime` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/passport_user_connect_view'
TBLPROPERTIES (
  'transient_lastDdlTime'='1446459758')
;
CREATE EXTERNAL TABLE `source.payment_online_order_refund`(
  `payment_id` int, 
  `refund_status` int, 
  `order_id` string, 
  `user_id` string, 
  `payment_method` string, 
  `request_amount` double, 
  `refund_amount` double, 
  `generate_date` string, 
  `refund_date` string, 
  `operate_date` string, 
  `failed_reason` string, 
  `retry_count` int, 
  `inputer` string, 
  `refund_response` string, 
  `create_at` string, 
  `update_at` string, 
  `order_refund_id` int, 
  `payment_plan_id` int, 
  `payment_execution_id` int, 
  `source_id` string, 
  `refund_method` int, 
  `operate_status` int, 
  `callback_url` string, 
  `lock_status` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/payment_online_order_refund'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444976804')
;
CREATE EXTERNAL TABLE `source.payment_payment_method`(
  `pm_id` int, 
  `pm_name` string, 
  `pm_group` int, 
  `pm_provider` string, 
  `on_pm_type` string, 
  `show_group` string, 
  `on_pm_bank_code` string, 
  `pm_img` string, 
  `pm_logo` string, 
  `pm_status` int, 
  `pm_sort` int, 
  `pm_type` int, 
  `pm_description` string, 
  `create_at` string, 
  `update_at` string, 
  `desc_detail` string, 
  `promotion_that` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/payment_payment_method'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615679')
;
CREATE EXTERNAL TABLE `source.phone_devicemanagementbigdata_mobile`(
  `id` string, 
  `imei` string, 
  `imei2` string, 
  `sn` string, 
  `meid` string, 
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
  `status` string, 
  `activation_halfhour_mobile` string, 
  `plan_create_username` string, 
  `plan_create_time` string, 
  `model` string, 
  `group_id` string, 
  `send_username` string, 
  `godown_entry_id` string, 
  `description` string, 
  `external_model` string, 
  `activation_ip` string, 
  `activation_halfhour_ip` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/phone_devicemanagementbigdata_mobile'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615679')
;
CREATE EXTERNAL TABLE `source.phone_devicemanagementbigdata_mobile_groups`(
  `id` string, 
  `model` string, 
  `title` string, 
  `is_default` string, 
  `description` string, 
  `status` string, 
  `production_stages` string, 
  `type1` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/phone_devicemanagementbigdata_mobile_groups'
TBLPROPERTIES (
  'last_modified_by'='fbr', 
  'last_modified_time'='1444620597', 
  'transient_lastDdlTime'='1444620597')
;
CREATE EXTERNAL TABLE `source.phone_devicemanagementbigdata_mobile_partnumber`(
  `letv_part_number` string, 
  `factory_part_number` string, 
  `factory` string, 
  `model` string, 
  `description` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/phone_devicemanagementbigdata_mobile_partnumber'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615679')
;
CREATE EXTERNAL TABLE `source.pmsdb_p_category`(
  `id` bigint, 
  `categoryno` string, 
  `name` string, 
  `parentno` string, 
  `haschild` int, 
  `level` int, 
  `priority` int, 
  `status` int, 
  `createuserno` bigint, 
  `createusername` string, 
  `createtime` string, 
  `updateuserno` bigint, 
  `updateusername` string, 
  `updatetime` string, 
  `isactive` tinyint, 
  `remark` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/pmsdb_p_category'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615680')
;
CREATE EXTERNAL TABLE `source.pmsdb_p_sku`(
  `id` bigint, 
  `skuno` string, 
  `skuname` string, 
  `categorynoone` string, 
  `categorynameone` string, 
  `categorynotwo` string, 
  `categorynametwo` string, 
  `categorynothree` string, 
  `categorynamethree` string, 
  `bizno` string, 
  `bizname` string, 
  `spuno` string, 
  `modelnumber` string, 
  `unit` string, 
  `barcode` string, 
  `qrcode` string, 
  `fitmachine` string, 
  `suttleweight` double, 
  `roughweight` double, 
  `volume` double, 
  `length` double, 
  `width` double, 
  `height` double, 
  `freightmodekey` bigint, 
  `freightmodename` string, 
  `price` double, 
  `isuselecode` tinyint, 
  `lecodeconcessionsamount` double, 
  `isvisible` tinyint, 
  `isenergysaving` tinyint, 
  `energysavingconcessionsamount` double, 
  `minpurchasenum` bigint, 
  `maxpurchasenum` bigint, 
  `depositratio` double, 
  `presaletimestart` string, 
  `presaletimeend` string, 
  `status` int, 
  `priority` int, 
  `productdescription` string, 
  `productdetaildescription` string, 
  `paramdescription` string, 
  `afterservice` string, 
  `weibodescription` string, 
  `skuid` string, 
  `ispresale` tinyint, 
  `islargecustomer` tinyint, 
  `createuserno` bigint, 
  `createusername` string, 
  `createtime` string, 
  `updateuserno` bigint, 
  `updateusername` string, 
  `updatetime` string, 
  `isactive` tinyint, 
  `remark` string, 
  `agencyprice` double, 
  `servicelife` tinyint, 
  `shelfliftday` tinyint, 
  `isshelflife` tinyint, 
  `isvirtual` tinyint, 
  `issn` tinyint, 
  `receiptname` string, 
  `receiptmodel` string, 
  `warmtips` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/pmsdb_p_sku'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615680')
;
CREATE EXTERNAL TABLE `source.pmsdb_p_sku_relation_ship`(
  `id` bigint, 
  `skuno` string, 
  `productgroupno` string, 
  `model` string, 
  `p_skuname` string, 
  `s_skuname` string, 
  `createuserno` bigint, 
  `createusername` string, 
  `updateuserno` bigint, 
  `updateusername` string, 
  `createtime` string, 
  `updatetime` string, 
  `isactive` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/pmsdb_p_sku_relation_ship'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444299168')
;
CREATE EXTERNAL TABLE `source.pmsdb_p_suite`(
  `id` bigint, 
  `suiteno` string, 
  `suitename` string, 
  `hasmainproduct` tinyint, 
  `skuno` string, 
  `skuname` string, 
  `minpurchasenum` bigint, 
  `maxpurchasenum` bigint, 
  `depositratio` double, 
  `presaletimestart` string, 
  `presaletimeend` string, 
  `mainproductprice` double, 
  `mainproductnum` int, 
  `suitedescription` string, 
  `suiteprice` double, 
  `shortestdelivery` int, 
  `longestdelivery` int, 
  `prepurchasedoc` string, 
  `status` int, 
  `isvisible` tinyint, 
  `ispresale` tinyint, 
  `isuselecode` tinyint, 
  `islargecustomer` tinyint, 
  `suitesubtitle` string, 
  `hardwarepricedescription` string, 
  `contentpricedescription` string, 
  `settlemessagetip` string, 
  `createuserno` bigint, 
  `createusername` string, 
  `createtime` string, 
  `updateuserno` bigint, 
  `updateusername` string, 
  `updatetime` string, 
  `isactive` tinyint, 
  `remark` string, 
  `bizno` string, 
  `bizname` string, 
  `issnapsuite` int, 
  `isdepositratio` int, 
  `depositdescription` string, 
  `mainproductagencyprice` double, 
  `isdiy` tinyint, 
  `isusesuiteimg` tinyint, 
  `contracttype` int)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/pmsdb_p_suite'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615680')
;
CREATE EXTERNAL TABLE `source.pmsdb_p_taxrate`(
  `id` bigint, 
  `categorynoone` string, 
  `categorynameone` string, 
  `categorynotwo` string, 
  `categorynametwo` string, 
  `categorynothree` string, 
  `categorynamethree` string, 
  `skuno` string, 
  `skuname` string, 
  `price` double, 
  `rate` double, 
  `status` int, 
  `iscategoryorsku` int, 
  `level` int, 
  `createuserno` bigint, 
  `createusername` string, 
  `createtime` string, 
  `updateuserno` bigint, 
  `updateusername` string, 
  `updatetime` string, 
  `isactive` tinyint, 
  `remark` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/pmsdb_p_taxrate'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615683')
;
CREATE EXTERNAL TABLE `source.tags_subscribe`(
  `user_id` string, 
  `app` string, 
  `tag_id` string, 
  `ctime` string, 
  `status` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/tags_subscribe'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444878942')
;
CREATE EXTERNAL TABLE `source.vip_letv_device_bind`(
  `id` int, 
  `sn` string, 
  `mac` string, 
  `device_type` int, 
  `device_version` string, 
  `device_detail_type` string, 
  `resource_type` int, 
  `resource_id` int, 
  `recharge_resource_id` string, 
  `active_user_id` int, 
  `active_time` string, 
  `product_id` string, 
  `order_id` string, 
  `status` int, 
  `create_time` string, 
  `update_time` string, 
  `version` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/vip_letv_device_bind'
TBLPROPERTIES (
  'transient_lastDdlTime'='1445826209')
;
CREATE EXTERNAL TABLE `source.vip_letv_t_letv_new_order`(
  `orderid` string, 
  `ordername` string, 
  `username` string, 
  `money` double, 
  `waveurl` string, 
  `status` int, 
  `createtime` string, 
  `canceltime` string, 
  `ordertype` int, 
  `aid` string, 
  `aidname` string, 
  `orderfrom` string, 
  `aid2` string, 
  `runningnumber` string, 
  `videoid` string, 
  `paytype` int, 
  `paytime` string, 
  `userip` string, 
  `pakbuycount` int, 
  `paychannel` int, 
  `suborderfrom` int, 
  `model` string, 
  `userid` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/vip_letv_t_letv_new_order'
TBLPROPERTIES (
  'transient_lastDdlTime'='1442391814')
;
CREATE EXTERNAL TABLE `source.vip_letv_t_letv_new_order_hk`(
  `orderid` string, 
  `ordername` string, 
  `username` string, 
  `money` double, 
  `waveurl` string, 
  `status` int, 
  `createtime` string, 
  `canceltime` string, 
  `ordertype` int, 
  `aid` string, 
  `aidname` string, 
  `orderfrom` string, 
  `aid2` string, 
  `runningnumber` string, 
  `videoid` string, 
  `paytype` int, 
  `paytime` string, 
  `userip` string, 
  `pakbuycount` int, 
  `paychannel` int, 
  `suborderfrom` int, 
  `model` string, 
  `userid` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/vip_letv_t_letv_new_order_hk'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444811626')
;
CREATE EXTERNAL TABLE `source.vip_letv_t_letv_userproduct`(
  `id` string, 
  `username` string, 
  `productid` string, 
  `productname` string, 
  `price` float, 
  `canceltime` string, 
  `orderfrom` string, 
  `userid` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/vip_letv_t_letv_userproduct'
TBLPROPERTIES (
  'transient_lastDdlTime'='1442388790')
;
CREATE EXTERNAL TABLE `source.vip_letv_t_live_order`(
  `id` bigint, 
  `userid` bigint, 
  `type` int, 
  `channel` string, 
  `category` string, 
  `season` string, 
  `turn` string, 
  `game` string, 
  `buy_count` int, 
  `count` int, 
  `orderid` string, 
  `create_time` string, 
  `expired_time` string, 
  `update_time` string, 
  `team` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/vip_letv_t_live_order'
TBLPROPERTIES (
  'transient_lastDdlTime'='1445571327')
;
CREATE EXTERNAL TABLE `source.vip_letv_t_new_order_4_data`(
  `orderid` string, 
  `ordername` string, 
  `username` string, 
  `money` string, 
  `waveurl` string, 
  `status` int, 
  `createtime` string, 
  `canceltime` string, 
  `ordertype` int, 
  `aid` string, 
  `aidname` string, 
  `orderfrom` string, 
  `aid2` string, 
  `runningnumber` string, 
  `videoid` string, 
  `paytype` bigint, 
  `paytime` string, 
  `userip` string, 
  `pakbuycount` int, 
  `paychannel` int, 
  `suborderfrom` int, 
  `model` string, 
  `userid` string, 
  `terminal` string, 
  `terminal2` string, 
  `viptype` string, 
  `orderpaytype` string, 
  `orderpaytype1` string, 
  `neworxufei` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/vip_letv_t_new_order_4_data'
TBLPROPERTIES (
  'transient_lastDdlTime'='1445571830')
;
CREATE EXTERNAL TABLE `source.wangjiu_authentication_user`(
  `user_id` string, 
  `user_name` string, 
  `password` string, 
  `nickname` string, 
  `sex` int, 
  `e_mail` string, 
  `is_auth_email` int, 
  `market_id` int, 
  `is_active` int, 
  `active_code` string, 
  `mobile` string, 
  `is_auth_mobile` int, 
  `realname` string, 
  `portrait_url` string, 
  `identity_card` string, 
  `province_id` int, 
  `province_name` string, 
  `city_id` int, 
  `city_name` string, 
  `district_id` int, 
  `district_name` string, 
  `adress_detail` string, 
  `birthday` string, 
  `is_marry` int, 
  `salary` int, 
  `signature` string, 
  `status` int, 
  `create_at` string, 
  `update_at` string, 
  `associate_id` string, 
  `thirdparty_id` string, 
  `is_default` int, 
  `is_hack_user` int, 
  `third_username` string, 
  `level_change_rule` int, 
  `letv_uid` string, 
  `letv_username` string, 
  `bind_time` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/wangjiu_authentication_user'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444441315')
;
CREATE EXTERNAL TABLE `source.wangjiu_orders_order_items`(
  `order_item_id` int, 
  `order_id` string, 
  `shipment_id` string, 
  `shipment_name` string, 
  `product_id` string, 
  `product_name` string, 
  `product_price` double, 
  `final_price` double, 
  `promotion_id` int, 
  `promotion_subtype` int, 
  `promotion_source` string, 
  `discount` double, 
  `quantity_in_group` int, 
  `quantity` int, 
  `reduce_value` double, 
  `points` int, 
  `points_send` int, 
  `coupons` string, 
  `coupons_send` int, 
  `is_gift` int, 
  `is_virtual` int, 
  `comment_flag` int, 
  `show_flag` int, 
  `product_weight` string, 
  `status` int, 
  `is_major` int, 
  `create_at` string, 
  `update_at` string, 
  `purchase_limit` int, 
  `cost_price` double, 
  `cupon_number` string, 
  `product_cost` double, 
  `invoice_cost` double, 
  `is_presale` int, 
  `presale_deliver_time` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/wangjiu_orders_order_items'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444441306')
;
CREATE EXTERNAL TABLE `source.wangjiu_orders_orders`(
  `order_id` string, 
  `user_id` string, 
  `order_status_id` int, 
  `storage_id` int, 
  `receiver` string, 
  `country_id` int, 
  `province_id` int, 
  `city_id` int, 
  `district_id` int, 
  `zip_code` string, 
  `address` string, 
  `address_arrive_flag` int, 
  `payment_method_id` string, 
  `order_amount` string, 
  `products_amount` string, 
  `discount_amount` string, 
  `shipping_fee` string, 
  `paid_amount` string, 
  `refund_amount` string, 
  `shipping_option` int, 
  `shipping_phone_confirm` int, 
  `cod_method` int, 
  `is_wjbank` int, 
  `shipping_method_id` int, 
  `order_desc` string, 
  `extra_message` string, 
  `split_package` int, 
  `is_invoice` int, 
  `invoice_title` string, 
  `invoice_type` int, 
  `invoice_cotent` int, 
  `default_config` int, 
  `inviter_info` string, 
  `order_way` int, 
  `promotion_id` int, 
  `promotion_price` double, 
  `promotion_points` int, 
  `propotion_points_send` int, 
  `promotion_coupons` string, 
  `promotion_coupons_send` int, 
  `promotion_free_shipping` int, 
  `create_at` string, 
  `update_at` string, 
  `mobile` string, 
  `telphone` string, 
  `order_type` int, 
  `approve_content` string, 
  `reject_status` int, 
  `reject_date` string, 
  `user_agent` string, 
  `on_amount` string, 
  `scan_flag` int, 
  `associate_id` string, 
  `mutex_buss_no` string, 
  `deliver_time` string, 
  `login_type` int, 
  `wineicopath` string, 
  `is_show_wineico` int, 
  `inner_desc` string, 
  `external_order_id` string, 
  `freight_promotion_id` string, 
  `order_product_invoice_cal` int, 
  `invoice_amount` double, 
  `express_company_id` int, 
  `out_user_id` string, 
  `consume_point` int, 
  `return_swap_flag` int, 
  `cancel_at` string, 
  `seller_id` string, 
  `presale_at` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/wangjiu_orders_orders'
TBLPROPERTIES (
  'last_modified_by'='data_platform', 
  'last_modified_time'='1450179157', 
  'transient_lastDdlTime'='1450179157')
;
CREATE EXTERNAL TABLE `source.wangjiu_payment_method`(
  `pm_id` string, 
  `pm_name` string, 
  `pm_group` string, 
  `pm_provider` string, 
  `show_group` string, 
  `on_pm_type` string, 
  `on_pm_bank_code` string, 
  `pm_img` string, 
  `pm_logo` string, 
  `pm_status` string, 
  `pm_sort` string, 
  `pm_type` string, 
  `pm_description` string, 
  `create_at` string, 
  `update_at` string, 
  `desc_detail` string, 
  `promotion_that` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/wangjiu_payment_method'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444441322')
;
CREATE EXTERNAL TABLE `source.wangjiu_product_category`(
  `product_id` string, 
  `product_category` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/wangjiu_product_category'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444441330')
;
CREATE EXTERNAL TABLE `source.wangjiu_user_phone`(
  `telephone` string, 
  `mobile_md5` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/wangjiu_user_phone'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444441330')
;
CREATE EXTERNAL TABLE `source.zhixin_tags_category`(
  `id` string, 
  `description` string, 
  `app` string, 
  `rank` string, 
  `mtime` string, 
  `icon` string, 
  `original_category_id` string, 
  `name` string, 
  `restype` string, 
  `parent_category_id` string, 
  `isbanner` string, 
  `thumbnail` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/zhixin_tags_category'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444878931')
;
CREATE EXTERNAL TABLE `source.zhixin_tags_tags`(
  `id` string, 
  `app` string, 
  `backurl` string, 
  `brand` string, 
  `category` string, 
  `ctime` string, 
  `description` string, 
  `icon` string, 
  `isbanner` string, 
  `mtime` string, 
  `name` string, 
  `original_category` string, 
  `othername` string, 
  `rank` string, 
  `tag_id` string, 
  `hot` string, 
  `thumbnail` string)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/zhixin_tags_tags'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444878920')
;
CREATE EXTERNAL TABLE `source.zhixin_wallpaper_twallpaper`(
  `id` int, 
  `title` string, 
  `des` string, 
  `ctime` string, 
  `etime` string, 
  `type` int, 
  `language` string, 
  `state` int, 
  `name` string, 
  `size` int, 
  `imgurl` string, 
  `videourl` string, 
  `thumb1080x1920` string, 
  `thumbnail` string, 
  `homepage` int, 
  `partnerid` int, 
  `repealtime` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/zhixin_wallpaper_twallpaper'
TBLPROPERTIES (
  'transient_lastDdlTime'='1445569565')
;
CREATE EXTERNAL TABLE `source.zhixin_wallpaper_twp_partner`(
  `id` int, 
  `name` string, 
  `opuid` string, 
  `ctime` string, 
  `utime` string, 
  `state` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/zhixin_wallpaper_twp_partner'
TBLPROPERTIES (
  'transient_lastDdlTime'='1445569565')
;
CREATE EXTERNAL TABLE `source.zhixin_wallpaper_twp_tags`(
  `wp_id` int, 
  `tag_id` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/zhixin_wallpaper_twp_tags'
TBLPROPERTIES (
  'transient_lastDdlTime'='1445569565')
;
CREATE EXTERNAL TABLE `source.zx_refund_order_refund_orders`(
  `apply_id` string, 
  `order_id` string, 
  `user_id` string, 
  `return_type` int, 
  `return_status` int, 
  `refund_method` int, 
  `refund_amount` double, 
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
  `custom_service_check_date` string, 
  `after_sale_check_date` string, 
  `warehouse_check_date` string, 
  `delivery_check_date` string, 
  `sign_person` string, 
  `warehouse` string, 
  `apply_date` string, 
  `service_date` string, 
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
  `picture_url` string, 
  `discription` string, 
  `apply_type` int, 
  `remark` string, 
  `creation_date` string, 
  `last_change_date` string, 
  `refund_quantity` int, 
  `shopping_fee` double, 
  `shopping_amount` double, 
  `packing_charges` double, 
  `tax` double, 
  `deduction` double, 
  `order_way` tinyint, 
  `financial_no` string, 
  `parent_order_id` string, 
  `ccerror_message` string, 
  `app_workno` string, 
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
  `contract_type` int, 
  `after_sale_discription` string, 
  `sign_time` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/zx_refund_order_refund_orders'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615679')
;
CREATE EXTERNAL TABLE `source.zx_refund_order_refund_orders_item`(
  `apply_id` string, 
  `order_id` string, 
  `product_id` string, 
  `product_number` bigint, 
  `product_name` string, 
  `original_price` double, 
  `sale_price` double, 
  `order_quantity` int, 
  `refund_quantity` int, 
  `exchange_quantity` int, 
  `mac_address` string, 
  `installation` int, 
  `remark` string, 
  `creation_date` string, 
  `last_change_date` string, 
  `install_quantity` int, 
  `is_wall` int, 
  `is_letv_pylons` int, 
  `pid` string, 
  `pcode` string, 
  `order_item_id` int, 
  `refund_item_id` int, 
  `is_open` int, 
  `coupon_amount` double, 
  `sale_amount` double, 
  `sn_no` string, 
  `new_sn_no` string, 
  `wh_entry_quantity` int, 
  `cus_service_quantity` int, 
  `wms_product_type` string, 
  `wms_product_type_name` string, 
  `product_type` string, 
  `product_twolevel_type` string, 
  `product_threelevel_type` string, 
  `is_required` int, 
  `is_main` int, 
  `imei` string, 
  `new_imei` string)
PARTITIONED BY ( 
  `dt` string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/zx_refund_order_refund_orders_item'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615680')
;
CREATE EXTERNAL TABLE `source.zx_tms_waybill_waybill_logs`(
  `id` bigint, 
  `waybill_no` string, 
  `order_no` string, 
  `operate_no` string, 
  `operator` string, 
  `operate_date` string, 
  `operatetype` int, 
  `log_content` string, 
  `create_user` string, 
  `create_no` string, 
  `create_time` string, 
  `update_user` string, 
  `update_no` string, 
  `update_time` string, 
  `yn` int, 
  `status` int, 
  `last_status` int, 
  `show_type` int)
PARTITIONED BY ( 
  `dt` int)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse/phone/datamarts/source.db/zx_tms_waybill_waybill_logs'
TBLPROPERTIES (
  'transient_lastDdlTime'='1444615681')
;
