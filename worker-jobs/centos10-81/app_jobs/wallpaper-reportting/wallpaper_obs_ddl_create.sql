--########################################################
--# This DDL script will add 'imei' column in all tables.#
--#                                                      #
--########################################################

USE scloud_phone;

DROP TABLE IF EXISTS PHONE_FAVORITES_SUMMARY_OBS;

DROP TABLE IF EXISTS PHONE_PREVIEW_SUMMARY_OBS;

DROP TABLE IF EXISTS PHONE_RANDOM_CLOSE_OBS;

DROP TABLE IF EXISTS PHONE_RANDOM_OPEN_OBS;

DROP TABLE IF EXISTS PHONE_SETTING_ALL_OBS;

DROP TABLE IF EXISTS PHONE_SETTING_DESKTOP_OBS;

DROP TABLE IF EXISTS PHONE_SETTING_LOCK_OBS;

DROP TABLE IF EXISTS PHONE_SETTING_SUMMARY_OBS;

DROP TABLE IF EXISTS PHONE_SHAKING_CLOSE_OBS;

DROP TABLE IF EXISTS PHONE_SHAKING_OPEN_OBS;

DROP TABLE IF EXISTS PHONE_WALLPAPER_SUMMARY_IMEI;

DROP TABLE IF EXISTS PHONE_WALLPAPER_SUMMARY_OBS;


CREATE TABLE PHONE_FAVORITES_SUMMARY_OBS
(
   TOTAL_FAVORITE_FOR_PHONE INT COMMENT '手机收藏总数',
   FAVORITE             INT COMMENT '壁纸收藏次数',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   IMEI                 STRING COMMENT '手机IMEI号'
);

CREATE TABLE PHONE_PREVIEW_SUMMARY_OBS
(
   TOTAL_PREVIEW        INT COMMENT '壁纸预览总次数',
   TOTAL_PREIVEW_FOR_PHONE INT COMMENT '壁纸预览手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   IMEI                 STRING COMMENT '手机IMEI号'
);


CREATE TABLE PHONE_RANDOM_CLOSE_OBS
(
   RANDOM_DISABLE       INT COMMENT '自动换壁纸关闭次数',
   RANDOM_DISABLE_PHONE INT COMMENT '自动换壁纸关闭手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   IMEI                 STRING COMMENT '手机IMEI号'
);


CREATE TABLE PHONE_RANDOM_OPEN_OBS
(
   RANDOM_ENABLE        INT COMMENT '自动换壁纸开启次数',
   RANDOM_FOR_PHONE     INT COMMENT '自动换壁纸开启手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   IMEI                 STRING COMMENT '手机IMEI号'
);


CREATE TABLE PHONE_SETTING_ALL_OBS
(
   APPLY_ALL            INT COMMENT '壁纸设置次数-同时',
   PHONE_APPLY_ALL      INT COMMENT '壁纸设置手机数-同时',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   IMEI                 STRING COMMENT '手机IMEI号'
);


CREATE TABLE PHONE_SETTING_DESKTOP_OBS
(
   APPLY_DESKTOP        INT COMMENT '壁纸设置次数-桌面',
   PHONE_APPLY_DESKTOP  INT COMMENT '壁纸设置手机数-桌面',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   IMEI                 STRING COMMENT '手机IMEI号'
);


CREATE TABLE PHONE_SETTING_LOCK_OBS
(
   APPLY_LOCK           INT COMMENT '壁纸设置次数-锁屏',
   PHONE_APPLY_LOCK     INT COMMENT '壁纸设置手机数-锁屏',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   IMEI                 STRING COMMENT '手机IMEI号'
);


CREATE TABLE PHONE_SETTING_SUMMARY_OBS
(
   TOTAL_SETTING        INT COMMENT '壁纸设置次数',
   SETTING_FOR_PHONE    INT COMMENT '壁纸设置手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   IMEI                 STRING COMMENT '手机IMEI号'
);


CREATE TABLE PHONE_SHAKING_CLOSE_OBS
(
   SHAKING_DISABLE      INT COMMENT '摇一摇换壁纸关闭次数',
   SHAKING_DISABLE_PHONE INT COMMENT '摇一摇换壁纸关闭手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   IMEI                 STRING COMMENT '手机IMEI号'
);


CREATE TABLE PHONE_SHAKING_OPEN_OBS
(
   SHAKING_ENABLE       INT COMMENT '摇一摇换壁纸开启次数',
   SHAKING_ENABLE_PHONE INT COMMENT '摇一摇换壁纸开启手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期',
   IMEI                 STRING COMMENT '手机IMEI号'
);

CREATE TABLE PHONE_WALLPAPER_SUMMARY_IMEI (
  TOTAL_PREVIEW INT COMMENT '壁纸预览总次数',
  TOTAL_PREIVEW_FOR_PHONE INT COMMENT '壁纸预览手机数',
  AVG_PREVIEW INT COMMENT '壁纸人均预览次数',
  FAVORITE INT COMMENT '壁纸收藏次数',
  TOTAL_FAVORITE_FOR_PHONE INT COMMENT '手机收藏总数',
  TOTAL_SETTING INT COMMENT '壁纸设置次数',
  SETTING_FOR_PHONE INT COMMENT '壁纸设置手机数',
  APPLY_DESKTOP INT COMMENT '壁纸设置次数-桌面',
  PHONE_APPLY_DESKTOP INT COMMENT '壁纸设置手机数-桌面',
  APPLY_LOCK INT COMMENT '壁纸设置次数-锁屏',
  PHONE_APPLY_LOCK INT COMMENT '壁纸设置手机数-锁屏',
  APPLY_ALL INT COMMENT '壁纸设置次数-同时',
  PHONE_APPLY_ALL INT COMMENT '壁纸设置手机数-同时',
  RANDOM_ENABLE INT COMMENT '自动换壁纸开启次数',
  RANDOM_FOR_PHONE INT COMMENT '自动换壁纸开启手机数',
  RANDOM_DISABLE INT COMMENT '自动换壁纸关闭次数',
  RANDOM_DISABLE_PHONE INT COMMENT '自动换壁纸关闭手机数',
  SHAKING_ENABLE INT COMMENT '摇一摇换壁纸开启次数',
  SHAKING_ENABLE_PHONE INT COMMENT '摇一摇换壁纸开启手机数',
  SHAKING_DISABLE INT COMMENT '摇一摇换壁纸关闭次数',
  SHAKING_DISABLE_PHONE INT COMMENT '摇一摇换壁纸关闭手机数',
  SUMMARY_DATE STRING COMMENT '统计日期',
  IMEI STRING COMMENT '手机IMEI号'
) ;

CREATE TABLE PHONE_WALLPAPER_SUMMARY_OBS(
  TOTAL_PREVIEW INT COMMENT '壁纸预览总次数',
  TOTAL_PREIVEW_FOR_PHONE INT COMMENT '壁纸预览手机数',
  AVG_PREVIEW INT COMMENT '壁纸人均预览次数',
  FAVORITE INT COMMENT '壁纸收藏次数',
  TOTAL_FAVORITE_FOR_PHONE INT COMMENT '手机收藏总数',
  TOTAL_SETTING INT COMMENT '壁纸设置次数',
  SETTING_FOR_PHONE INT COMMENT '壁纸设置手机数',
  APPLY_DESKTOP INT COMMENT '壁纸设置次数-桌面',
  PHONE_APPLY_DESKTOP INT COMMENT '壁纸设置手机数-桌面',
  APPLY_LOCK INT COMMENT '壁纸设置次数-锁屏',
  PHONE_APPLY_LOCK INT COMMENT '壁纸设置手机数-锁屏',
  APPLY_ALL INT COMMENT '壁纸设置次数-同时',
  PHONE_APPLY_ALL INT COMMENT '壁纸设置手机数-同时',
  RANDOM_ENABLE INT COMMENT '自动换壁纸开启次数',
  RANDOM_FOR_PHONE INT COMMENT '自动换壁纸开启手机数',
  RANDOM_DISABLE INT COMMENT '自动换壁纸关闭次数',
  RANDOM_DISABLE_PHONE INT COMMENT '自动换壁纸关闭手机数',
  SHAKING_ENABLE INT COMMENT '摇一摇换壁纸开启次数',
  SHAKING_ENABLE_PHONE INT COMMENT '摇一摇换壁纸开启手机数',
  SHAKING_DISABLE INT COMMENT '摇一摇换壁纸关闭次数',
  SHAKING_DISABLE_PHONE INT COMMENT '摇一摇换壁纸关闭手机数',
  SUMMARY_DATE STRING COMMENT '统计日期',
  IMEI STRING COMMENT '手机IMEI号',
  SOFTWARE_VERSION STRING COMMENT '软件版本编号',
  EXTERNAL_MODEL STRING COMMENT '外部机型',
  GROUP_TITLE STRING COMMENT '分组名称'
) ;
