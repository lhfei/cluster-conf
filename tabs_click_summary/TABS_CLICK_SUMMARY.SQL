USE SCLOUD_PHONE;

DROP TABLE IF EXISTS PHONE_TABS_CLICK;
DROP TABLE IF EXISTS PHONE_TABS_CLICK_SUMMARY;
DROP TABLE IF EXISTS PHONE_TABS_CLICK_SUMMARY_OBS;
DROP TABLE IF EXISTS PHONE_ACTIVITY_DAILY;

CREATE TABLE PHONE_TABS_CLICK
(
   IMEI                 STRING COMMENT '手机IMEI号',
   TAB_TYPE             CHAR(1) COMMENT '手机Tab页类型,[最新页(1) |关注页(2) | 排行页(3)| 广场页(4) |管理页 (5)]',
   EXPOSURE_ON_PHONE    INT COMMENT '曝光手机次数',
   EXPOSURE_SUM         INT COMMENT '曝光总次数',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


CREATE TABLE PHONE_TABS_CLICK_SUMMARY
(
   IMEI                 STRING COMMENT '手机IMEI号',
   EXPOSURE_ON_PHONE_LATEST INT COMMENT '曝光手机次数-最新',
   EXPOSURE_SUM_LATEST  INT COMMENT '曝光总次数-最新页',
   EXPOSURE_ON_PHONE_FOLLOW INT COMMENT '曝光手机次数-关注页',
   EXPOSURE_SUM_FOLLOW  INT COMMENT '曝光总次数-关注页',
   EXPOSURE_SUM_TOP     INT COMMENT '曝光总次数-排行页',
   EXPOSURE_ON_PHONE_TOP INT COMMENT '曝光手机次数-排行页',
   EXPOSURE_SUM_DESK    INT COMMENT '曝光总次数-广场页',
   EXPOSURE_ON_PHONE_DESK INT COMMENT '曝光手机次数-广场页',
   EXPOSURE_SUM_MANA    INT COMMENT '曝光总次数-管理页',
   EXPOSURE_ON_PHONE_MANA INT COMMENT '曝光手机次数-管理页',
   SUMMARY_DATE         STRING COMMENT '统计日期'
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';


CREATE TABLE PHONE_TABS_CLICK_SUMMARY_OBS
(
   IMEI                 STRING COMMENT '手机IMEI号',
   EXPOSURE_ON_PHONE_LATEST INT COMMENT '曝光手机次数-最新',
   EXPOSURE_SUM_LATEST  INT COMMENT '曝光总次数-最新页',
   EXPOSURE_ON_PHONE_FOLLOW INT COMMENT '曝光手机次数-关注页',
   EXPOSURE_SUM_FOLLOW  INT COMMENT '曝光总次数-关注页',
   EXPOSURE_SUM_TOP     INT COMMENT '曝光总次数-排行页',
   EXPOSURE_ON_PHONE_TOP INT COMMENT '曝光手机次数-排行页',
   EXPOSURE_SUM_DESK    INT COMMENT '曝光总次数-广场页',
   EXPOSURE_ON_PHONE_DESK INT COMMENT '曝光手机次数-广场页',
   EXPOSURE_SUM_MANA    INT COMMENT '曝光总次数-管理页',
   EXPOSURE_ON_PHONE_MANA INT COMMENT '曝光手机次数-管理页',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   SOFTWARE_VERSION     STRING COMMENT '软件版本编',
   EXTERNAL_MODEL       STRING COMMENT '外部机型',
   GROUP_TITLE          STRING COMMENT '分组名称',
   ACTIVITY_DAILY       INT COMMENT '手机日活跃汇总数'
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';


CREATE TABLE PHONE_ACTIVITY_DAILY
(
   IMEI                 STRING COMMENT '手机IMEI号',
   GROUP_TITLE          STRING COMMENT '分组名称',
   SOFTWARE_VERSION     STRING COMMENT '软件版本编',
   EXTERNAL_MODEL       STRING COMMENT '外部机型',
   ACTIVITY_DAILY       INT COMMENT '手机日活跃汇总数',
   SUMMARY_DATE         STRING COMMENT '统计日期'
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';
