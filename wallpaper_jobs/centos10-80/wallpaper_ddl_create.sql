USE scloud_phone;

DROP TABLE IF EXISTS PHONE_FAVORITES_SUMMARY;

DROP TABLE IF EXISTS PHONE_PREVIEW_SUMMARY;

DROP TABLE IF EXISTS PHONE_RANDOM_CLOSE;

DROP TABLE IF EXISTS PHONE_RANDOM_OPEN;

DROP TABLE IF EXISTS PHONE_SETTING_ALL;

DROP TABLE IF EXISTS PHONE_SETTING_DESKTOP;

DROP TABLE IF EXISTS PHONE_SETTING_LOCK;

DROP TABLE IF EXISTS PHONE_SETTING_SUMMARY;

DROP TABLE IF EXISTS PHONE_SHAKING_CLOSE;

DROP TABLE IF EXISTS PHONE_SHAKING_OPEN;

DROP TABLE IF EXISTS PHONE_WALLPAPER_SUMMARY;

-- DROP TABLE IF EXISTS PHONE_FAVORITES_SUMMARY; DROP TABLE IF EXISTS PHONE_PREVIEW_SUMMARY; DROP TABLE IF EXISTS PHONE_RANDOM_CLOSE; DROP TABLE IF EXISTS PHONE_RANDOM_OPEN; DROP TABLE IF EXISTS PHONE_SETTING_ALL; DROP TABLE IF EXISTS PHONE_SETTING_DESKTOP; DROP TABLE IF EXISTS PHONE_SETTING_LOCK; DROP TABLE IF EXISTS PHONE_SETTING_SUMMARY; DROP TABLE IF EXISTS PHONE_SHAKING_CLOSE; DROP TABLE IF EXISTS PHONE_SHAKING_OPEN; DROP TABLE IF EXISTS PHONE_WALLPAPER_SUMMARY; 


CREATE TABLE PHONE_FAVORITES_SUMMARY
(
   TOTAL_FAVORITE_FOR_PHONE INT COMMENT 'total_favorite_for_phone',
   FAVORITE             INT COMMENT '壁纸收藏次数',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);

CREATE TABLE PHONE_PREVIEW_SUMMARY
(
   TOTAL_PREVIEW        INT COMMENT '壁纸预览总次数',
   TOTAL_PREIVEW_FOR_PHONE INT COMMENT '壁纸预览手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


CREATE TABLE PHONE_RANDOM_CLOSE
(
   RANDOM_DISABLE       INT COMMENT '自动换壁纸关闭次数',
   RANDOM_DISABLE_PHONE INT COMMENT '自动换壁纸关闭手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


CREATE TABLE PHONE_RANDOM_OPEN
(
   RANDOM_ENABLE        INT COMMENT '自动换壁纸开启次数',
   RANDOM_FOR_PHONE     INT COMMENT '自动换壁纸开启手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


CREATE TABLE PHONE_SETTING_ALL
(
   APPLY_ALL            INT COMMENT '壁纸设置次数-同时',
   PHONE_APPLY_ALL      INT COMMENT '壁纸设置手机数-同时',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


CREATE TABLE PHONE_SETTING_DESKTOP
(
   APPLY_DESKTOP        INT COMMENT '壁纸设置次数-桌面',
   PHONE_APPLY_DESKTOP  INT COMMENT '壁纸设置手机数-桌面',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


CREATE TABLE PHONE_SETTING_LOCK
(
   APPLY_LOCK           INT COMMENT '壁纸设置次数-锁屏',
   PHONE_APPLY_LOCK     INT COMMENT '壁纸设置手机数-锁屏',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


CREATE TABLE PHONE_SETTING_SUMMARY
(
   TOTAL_SETTING        INT COMMENT '壁纸设置次数',
   SETTING_FOR_PHONE    INT COMMENT '壁纸设置手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


CREATE TABLE PHONE_SHAKING_CLOSE
(
   SHAKING_DISABLE      INT COMMENT '摇一摇换壁纸关闭次数',
   SHAKING_DISABLE_PHONE INT COMMENT '摇一摇换壁纸关闭手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


CREATE TABLE PHONE_SHAKING_OPEN
(
   SHAKING_ENABLE       INT COMMENT '摇一摇换壁纸开启次数',
   SHAKING_ENABLE_PHONE INT COMMENT '摇一摇换壁纸开启手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


CREATE TABLE PHONE_WALLPAPER_SUMMARY
(
   TOTAL_PREVIEW        INT COMMENT '壁纸预览总次数',
   TOTAL_PREIVEW_FOR_PHONE INT COMMENT '壁纸预览手机数',
   AVG_PREVIEW          INT COMMENT '壁纸人均预览次数',
   FAVORITE             INT COMMENT '壁纸收藏次数',
   TOTAL_FAVORITE_FOR_PHONE INT COMMENT 'total_favorite_for_phone',
   TOTAL_SETTING        INT COMMENT '壁纸设置次数',
   SETTING_FOR_PHONE    INT COMMENT '壁纸设置手机数',
   APPLY_DESKTOP        INT COMMENT '壁纸设置次数-桌面',
   PHONE_APPLY_DESKTOP  INT COMMENT '壁纸设置手机数-桌面',
   APPLY_LOCK           INT COMMENT '壁纸设置次数-锁屏',
   PHONE_APPLY_LOCK     INT COMMENT '壁纸设置手机数-锁屏',
   APPLY_ALL            INT COMMENT '壁纸设置次数-同时',
   PHONE_APPLY_ALL      INT COMMENT '壁纸设置手机数-同时',
   RANDOM_ENABLE        INT COMMENT '自动换壁纸开启次数',
   RANDOM_FOR_PHONE     INT COMMENT '自动换壁纸开启手机数',
   RANDOM_DISABLE       INT COMMENT '自动换壁纸关闭次数',
   RANDOM_DISABLE_PHONE INT COMMENT '自动换壁纸关闭手机数',
   SHAKING_ENABLE       INT COMMENT '摇一摇换壁纸开启次数',
   SHAKING_ENABLE_PHONE INT COMMENT '摇一摇换壁纸开启手机数',
   SHAKING_DISABLE      INT COMMENT '摇一摇换壁纸关闭次数',
   SHAKING_DISABLE_PHONE INT COMMENT '摇一摇换壁纸关闭手机数',
   SUMMARY_DATE         STRING COMMENT '统计日期'
);


