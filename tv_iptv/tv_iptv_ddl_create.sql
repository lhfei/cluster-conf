USE tv_iptv;

DROP TABLE IF EXISTS box_base;
DROP TABLE IF EXISTS box_group;
DROP TABLE IF EXISTS box_mode;

CREATE EXTERNAL TABLE box_base (
  boxId BIGINT ,
  version BIGINT ,
  boxSn STRING ,
  boxMac STRING ,
  boxHardDiskSn STRING ,
  status STRING ,
  boxVersion STRING ,
  storageDate STRING ,
  boxModeId BIGINT ,
  storedBy BIGINT ,
  warehouseId BIGINT ,
  boxGroupId BIGINT ,
  deliveryUsername STRING ,
  deliveryDate STRING ,
  boxPurchaseOrderId BIGINT ,
  tsiUserSn STRING ,
  description STRING,
  deliveryType STRING ,
  vipSn STRING ,
  createTime STRING ,
  upSTRING STRING ,
  createdBy STRING ,
  updatedBy STRING ,
  userId BIGINT ,
  userCardId BIGINT ,
  legacyId BIGINT ,
  boxSellerId BIGINT ,
  configCode STRING 
) PARTITIONED BY (dt STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY "\t" LOCATION "hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/tv_iptv.db/box_base/";


CREATE EXTERNAL TABLE box_group (
  boxGroupId BIGINT ,
  version BIGINT ,
  name STRING ,
  type STRING ,
  description STRING ,
  status STRING ,
  createTime STRING ,
  upSTRING STRING ,
  createdBy STRING ,
  updatedBy STRING ,
  showFlag STRING ,
  modelType STRING ,
  broadAuth CHAR(1)  COMMENT "是否播控认证 1 是 0 否",
  stopFlag STRING ,
  relationId STRING  COMMENT "关联的组ID",
  relationName STRING  COMMENT "关联的组名称"
) PARTITIONED BY (dt STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY "\t" LOCATION "hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/tv_iptv.db/box_group/";

CREATE EXTERNAL TABLE box_mode (
  boxModeId BIGINT,
  version BIGINT ,
  mode STRING ,
  displayMode STRING ,
  status STRING ,
  createTime STRING ,
  upSTRING STRING ,
  createdBy STRING ,
  updatedBy STRING ,
  showFlag STRING ,
  type STRING 
) PARTITIONED BY (dt STRING) ROW FORMAT DELIMITED FIELDS TERMINATED BY "\t" LOCATION "hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/tv_iptv.db/box_mode/";
