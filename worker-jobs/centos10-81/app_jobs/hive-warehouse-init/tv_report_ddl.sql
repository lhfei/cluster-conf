CREATE EXTERNAL TABLE tv_report.appinstall(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  pn string, 
  ver string, 
  status string, 
  ecode string, 
  emsg string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/appinstall'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418113212')
;
CREATE EXTERNAL TABLE tv_report.appuninstall(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  pn string, 
  ver string, 
  status string, 
  ecode string, 
  emsg string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/appuninstall'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418113234')
;
CREATE EXTERNAL TABLE tv_report.avro_appstartup(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  pn string, 
  ver string, 
  status string, 
  ecode string, 
  emsg string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/avro_appstartup'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418113248')
;
CREATE EXTERNAL TABLE tv_report.avro_bootstrap(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  nt string, 
  hwver string, 
  hwbrand string, 
  hwdevice string, 
  hwhardware string, 
  hwmodel string, 
  hwserial string, 
  hwid string, 
  os string, 
  dls string, 
  dts string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/avro_bootstrap'
TBLPROPERTIES (
  'numPartitions'='394', 
  'numFiles'='2040', 
  'transient_lastDdlTime'='1447676693', 
  'numRows'='0', 
  'totalSize'='49405115493', 
  'rawDataSize'='0')
;
CREATE  TABLE tv_report.avro_bootstrap_tmp(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  nt string, 
  hwver string, 
  hwbrand string, 
  hwdevice string, 
  hwhardware string, 
  hwmodel string, 
  hwserial string, 
  hwid string, 
  os string, 
  dls string, 
  dts string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/avro_bootstrap_tmp'
TBLPROPERTIES (
  'numPartitions'='1', 
  'numFiles'='1', 
  'transient_lastDdlTime'='1435114306', 
  'numRows'='0', 
  'totalSize'='2993790244', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.avro_endplay(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  spid string, 
  type string, 
  dur string, 
  ecode string, 
  emsg string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/avro_endplay'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421661819')
;
CREATE EXTERNAL TABLE tv_report.avro_heartbeat(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  tick string, 
  factor string, 
  bps string, 
  csize string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/avro_heartbeat'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418029519')
;
CREATE EXTERNAL TABLE tv_report.avro_startplay(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  mmsid string, 
  aid string, 
  cid string, 
  offset string, 
  type string, 
  action string, 
  vid string, 
  fspid string, 
  ecode string, 
  emsg string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/avro_startplay'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421663899')
;
CREATE  TABLE tv_report.boot_oversea(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  osver string, 
  osvern string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/boot_oversea'
TBLPROPERTIES (
  'numPartitions'='214', 
  'numFiles'='409', 
  'transient_lastDdlTime'='1447975727', 
  'numRows'='0', 
  'totalSize'='13089261796', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.browser_dur(
  mac string, 
  model string, 
  dur string, 
  bundle string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/browser_dur'
TBLPROPERTIES (
  'numPartitions'='299', 
  'numFiles'='328', 
  'transient_lastDdlTime'='1447963771', 
  'numRows'='0', 
  'totalSize'='4489832741', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.browser_ver(
  sv string, 
  mac string, 
  ver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  ts string, 
  bundle string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/browser_ver'
TBLPROPERTIES (
  'numPartitions'='300', 
  'numFiles'='331', 
  'transient_lastDdlTime'='1447965732', 
  'numRows'='0', 
  'totalSize'='114668165443', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.browserbaidusrch(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  bundle string, 
  channel string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/browserbaidusrch'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421637472')
;
CREATE EXTERNAL TABLE tv_report.browserbaiduvideosrch(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  bundle string, 
  channel string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/browserbaiduvideosrch'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421637778')
;
CREATE EXTERNAL TABLE tv_report.browserheartbeat(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  dur string, 
  bundle string, 
  channel string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/browserheartbeat'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421637851')
;
CREATE EXTERNAL TABLE tv_report.browserlink(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  url string, 
  bundle string, 
  channel string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/browserlink'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421638701')
;
CREATE EXTERNAL TABLE tv_report.browsernav(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  url string, 
  bundle string, 
  channel string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/browsernav'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421638762')
;
CREATE  TABLE tv_report.browsernew(
  ts bigint, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  bundle string, 
  channel string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/browsernew'
TBLPROPERTIES (
  'numPartitions'='465', 
  'numFiles'='522', 
  'transient_lastDdlTime'='1447964032', 
  'numRows'='0', 
  'totalSize'='1454310194', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.browserplayvideo(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  title string, 
  url string, 
  uuid string, 
  bundle string, 
  channel string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/browserplayvideo'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421661501')
;
CREATE EXTERNAL TABLE tv_report.browserstartup(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  bundle string, 
  channel string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/browserstartup'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421638813')
;
CREATE EXTERNAL TABLE tv_report.cdndispatch(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  respt string, 
  retry string, 
  url string, 
  status string, 
  cdnarea string, 
  cdnec string, 
  nodenum string, 
  ecode string, 
  emsg string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/cdndispatch'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421658304')
;
CREATE  TABLE tv_report.devicetrace(
  mac string, 
  boxgroup string, 
  mode string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  osver string, 
  ts string, 
  ip string, 
  sn string, 
  model string, 
  osvern string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/devicetrace'
TBLPROPERTIES (
  'numPartitions'='461', 
  'numFiles'='464', 
  'transient_lastDdlTime'='1447963502', 
  'numRows'='0', 
  'totalSize'='7256723', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.errlog(
  log string, 
  err string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/errlog'
TBLPROPERTIES (
  'transient_lastDdlTime'='1432805794')
;
CREATE EXTERNAL TABLE tv_report.geraction(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  udid string, 
  pn string, 
  ver string, 
  vern string, 
  os string, 
  osver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  bundle string, 
  action string, 
  props map<string,string>, 
  ecode string, 
  emsg string, 
  appkey string, 
  channel string)
PARTITIONED BY ( 
  dt string, 
  pt1 string, 
  pt2 string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/geraction'
TBLPROPERTIES (
  'transient_lastDdlTime'='1409292872')
;
CREATE EXTERNAL TABLE tv_report.gerdur(
  mac string, 
  model string, 
  appkey string, 
  dur string, 
  bundle string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/gerdur'
TBLPROPERTIES (
  'numPartitions'='301', 
  'numFiles'='333', 
  'transient_lastDdlTime'='1447975015', 
  'numRows'='0', 
  'totalSize'='240215762', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.gerheartbeat(
  ts string COMMENT 'from deserializer', 
  ip string COMMENT 'from deserializer', 
  country string COMMENT 'from deserializer', 
  province string COMMENT 'from deserializer', 
  district string COMMENT 'from deserializer', 
  isp string COMMENT 'from deserializer', 
  sv string COMMENT 'from deserializer', 
  mac string COMMENT 'from deserializer', 
  udid string COMMENT 'from deserializer', 
  pn string COMMENT 'from deserializer', 
  ver string COMMENT 'from deserializer', 
  vern string COMMENT 'from deserializer', 
  os string COMMENT 'from deserializer', 
  osver string COMMENT 'from deserializer', 
  hwbrand string COMMENT 'from deserializer', 
  hwdevice string COMMENT 'from deserializer', 
  hwmodel string COMMENT 'from deserializer', 
  hwhardware string COMMENT 'from deserializer', 
  hwid string COMMENT 'from deserializer', 
  hwserial string COMMENT 'from deserializer', 
  model string COMMENT 'from deserializer', 
  brand string COMMENT 'from deserializer', 
  ro string COMMENT 'from deserializer', 
  nt string COMMENT 'from deserializer', 
  uuid string COMMENT 'from deserializer', 
  dur string COMMENT 'from deserializer', 
  bundle string COMMENT 'from deserializer', 
  appkey string COMMENT 'from deserializer', 
  channel string COMMENT 'from deserializer')
PARTITIONED BY ( 
  area string, 
  dt string, 
  pt1 string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.LazyBinaryColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/gerheartbeat'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421663056')
;
CREATE EXTERNAL TABLE tv_report.gernew(
  sv string, 
  mac string, 
  udid string, 
  pn string, 
  ver string, 
  vern string, 
  os string, 
  osver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  bundle string, 
  appkey string, 
  channel string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  ts bigint)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/gernew'
TBLPROPERTIES (
  'numPartitions'='334', 
  'numFiles'='368', 
  'transient_lastDdlTime'='1447975360', 
  'numRows'='0', 
  'totalSize'='348239566', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.gerstartup(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  udid string, 
  pn string, 
  ver string, 
  vern string, 
  os string, 
  osver string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  uuid string, 
  bundle string, 
  appkey string, 
  channel string)
PARTITIONED BY ( 
  area string, 
  dt string, 
  pt1 string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/gerstartup'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421663061')
;
CREATE  TABLE tv_report.ggtemp(
  mac string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/ggtemp'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='1', 
  'transient_lastDdlTime'='1426733332', 
  'numRows'='0', 
  'totalSize'='37388', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.hk_activate_count(
  d string, 
  mode string, 
  total int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_activate_count'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418110196')
;
CREATE EXTERNAL TABLE tv_report.hk_activate_delta(
  d string, 
  mode string, 
  total int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_activate_delta'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418111140')
;
CREATE EXTERNAL TABLE tv_report.hk_app_startup_daily(
  d string, 
  mode string, 
  pn string, 
  total bigint, 
  mtotal bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_app_startup_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418890210')
;
CREATE EXTERNAL TABLE tv_report.hk_bootstrap_all(
  d string, 
  mode string, 
  total int, 
  mtotal int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_bootstrap_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418111152')
;
CREATE EXTERNAL TABLE tv_report.hk_bootstrap_daily(
  d string, 
  mode string, 
  total int, 
  mtotal int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_bootstrap_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418111147')
;
CREATE EXTERNAL TABLE tv_report.hk_carousel_play_daily(
  d string, 
  mode string, 
  total bigint, 
  mtotal bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_carousel_play_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418351697')
;
CREATE EXTERNAL TABLE tv_report.hk_carousel_plist_show_daily(
  d string, 
  mode string, 
  total int, 
  mtotal int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY 'u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_osver_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1430708937')
;
CREATE EXTERNAL TABLE tv_report.hk_carousel_time_daily(
  d string, 
  mode string, 
  time bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_carousel_time_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418633396')
;
CREATE EXTERNAL TABLE tv_report.hk_desktop_show_daily(
  d string, 
  mode string, 
  desktop int, 
  screen int, 
  total bigint, 
  mtotal bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_desktop_show_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418280303')
;
CREATE EXTERNAL TABLE tv_report.hk_desktop_startup(
  d string, 
  mode string, 
  desktop int, 
  mtotal bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_desktop_startup'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418955885')
;
CREATE EXTERNAL TABLE tv_report.hk_online_time_daily(
  d string, 
  mode string, 
  time bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_online_time_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418111168')
;
CREATE EXTERNAL TABLE tv_report.hk_osver_daily(
  d string, 
  mode string, 
  osver string, 
  osvern string, 
  total int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY 'u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_osver_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1430707297')
;
CREATE EXTERNAL TABLE tv_report.hk_prmdposter_click_daily(
  d string, 
  mode string, 
  posterpos int, 
  postername string, 
  posterurl string, 
  total bigint, 
  mtotal bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_prmdposter_click_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418956996')
;
CREATE EXTERNAL TABLE tv_report.hk_program_choose_daily(
  d string, 
  mode string, 
  total bigint, 
  mtotal bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_program_choose_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418280362')
;
CREATE EXTERNAL TABLE tv_report.hk_program_show_daily(
  d string, 
  mode string, 
  total bigint, 
  mtotal bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_program_show_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418888839')
;
CREATE EXTERNAL TABLE tv_report.hk_search_count_daily(
  d string, 
  mode string, 
  total bigint, 
  mtotal bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_search_count_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418369862')
;
CREATE EXTERNAL TABLE tv_report.hk_shposter_click_count(
  d string, 
  mode string, 
  total bigint, 
  mtotal bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_shposter_click_count'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418369870')
;
CREATE EXTERNAL TABLE tv_report.hk_upgrade_count(
  d string, 
  mode string, 
  total bigint, 
  mtotal bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_upgrade_count'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418884478')
;
CREATE EXTERNAL TABLE tv_report.hk_user_register_daily(
  d string, 
  mode string, 
  total bigint)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/hk_user_register_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418892521')
;
CREATE  TABLE tv_report.iptv_box(
  id bigint, 
  mac string, 
  sn string, 
  mode string, 
  boxgroup string, 
  deliverydate string, 
  createtime string, 
  modename string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/iptv_box'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='5', 
  'transient_lastDdlTime'='1447963555', 
  'numRows'='0', 
  'totalSize'='85067208', 
  'rawDataSize'='0')
;
CREATE  TABLE tv_report.iptv_group(
  boxgroupid bigint, 
  name string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/iptv_group'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='1', 
  'transient_lastDdlTime'='1447963708', 
  'numRows'='0', 
  'totalSize'='9669', 
  'rawDataSize'='0')
;
CREATE  TABLE tv_report.iptv_mode(
  boxmodeid bigint, 
  mode string, 
  displaymode string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/iptv_mode'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='1', 
  'transient_lastDdlTime'='1447963662', 
  'numRows'='0', 
  'totalSize'='884', 
  'rawDataSize'='0')
;
CREATE  TABLE tv_report.iptv_upgrade(
  id bigint, 
  mac string, 
  sn string, 
  mode string, 
  boxgroup string, 
  deliverydate string, 
  createtime string, 
  modename string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/iptv_upgrade'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='2', 
  'transient_lastDdlTime'='1447963599', 
  'numRows'='0', 
  'totalSize'='19527', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.letv_play_dur(
  mode string, 
  boxgroup string, 
  osver string, 
  mac string, 
  ch string, 
  uuid string, 
  dur string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/letv_play_dur'
TBLPROPERTIES (
  'numPartitions'='302', 
  'numFiles'='302', 
  'transient_lastDdlTime'='1447963920', 
  'numRows'='0', 
  'totalSize'='324215676000', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.letvblock(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  uid string, 
  sid string, 
  appver string, 
  ver string, 
  p1 string, 
  p2 string, 
  p3 string, 
  ac string, 
  err string, 
  pt string, 
  ut string, 
  lc string, 
  auid string, 
  uuid string, 
  cid string, 
  pid string, 
  vid string, 
  vlen string, 
  ch string, 
  ry string, 
  ty string, 
  vt string, 
  url string, 
  ref string, 
  pv string, 
  py string, 
  st string, 
  ilu string, 
  pcode string, 
  weid string, 
  r string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/letvblock'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418113262')
;
CREATE EXTERNAL TABLE tv_report.letvchswitch(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  flag string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  uid string, 
  sid string, 
  appver string, 
  srcch string, 
  switchway string, 
  ver string, 
  p1 string, 
  p2 string, 
  p3 string, 
  acode string, 
  ap string, 
  ar string, 
  cid string, 
  pid string, 
  vid string, 
  uuid string, 
  lc string, 
  cururl string, 
  ch string, 
  pcode string, 
  auid string, 
  ilu string, 
  r string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/letvchswitch'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418113308')
;
CREATE EXTERNAL TABLE tv_report.letvend(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  uid string, 
  sid string, 
  appver string, 
  ver string, 
  p1 string, 
  p2 string, 
  p3 string, 
  ac string, 
  err string, 
  pt string, 
  ut string, 
  lc string, 
  auid string, 
  uuid string, 
  cid string, 
  pid string, 
  vid string, 
  vlen string, 
  ch string, 
  ry string, 
  ty string, 
  vt string, 
  url string, 
  ref string, 
  pv string, 
  py string, 
  st string, 
  ilu string, 
  pcode string, 
  weid string, 
  r string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/letvend'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418113318')
;
CREATE EXTERNAL TABLE tv_report.letvenv(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  p1 string, 
  p2 string, 
  p3 string, 
  lc string, 
  uuid string, 
  nt string, 
  os string, 
  osv string, 
  app string, 
  bd string, 
  xh string, 
  ro string, 
  br string, 
  r string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/letvenv'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418114549')
;
CREATE EXTERNAL TABLE tv_report.letvinit(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  uid string, 
  sid string, 
  appver string, 
  ver string, 
  p1 string, 
  p2 string, 
  p3 string, 
  ac string, 
  err string, 
  pt string, 
  ut string, 
  lc string, 
  auid string, 
  uuid string, 
  cid string, 
  pid string, 
  vid string, 
  vlen string, 
  ch string, 
  ry string, 
  ty string, 
  vt string, 
  url string, 
  ref string, 
  pv string, 
  py string, 
  st string, 
  ilu string, 
  pcode string, 
  weid string, 
  r string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/letvinit'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418114605')
;
CREATE EXTERNAL TABLE tv_report.letvplay(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  uid string, 
  sid string, 
  appver string, 
  ver string, 
  p1 string, 
  p2 string, 
  p3 string, 
  ac string, 
  err string, 
  pt string, 
  ut string, 
  lc string, 
  auid string, 
  uuid string, 
  cid string, 
  pid string, 
  vid string, 
  vlen string, 
  ch string, 
  ry string, 
  ty string, 
  vt string, 
  url string, 
  ref string, 
  pv string, 
  py string, 
  st string, 
  ilu string, 
  pcode string, 
  weid string, 
  r string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/letvplay'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418351957')
;
CREATE EXTERNAL TABLE tv_report.letvplistshow(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  uid string, 
  sid string, 
  appver string, 
  ver string, 
  p1 string, 
  p2 string, 
  p3 string, 
  acode string, 
  ap string, 
  ar string, 
  cid string, 
  pid string, 
  vid string, 
  uuid string, 
  lc string, 
  cururl string, 
  ch string, 
  pcode string, 
  auid string, 
  ilu string, 
  r string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/letvplistshow'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418115140')
;
CREATE EXTERNAL TABLE tv_report.letvtime(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  uid string, 
  sid string, 
  appver string, 
  ver string, 
  p1 string, 
  p2 string, 
  p3 string, 
  ac string, 
  err string, 
  pt string, 
  ut string, 
  lc string, 
  auid string, 
  uuid string, 
  cid string, 
  pid string, 
  vid string, 
  vlen string, 
  ch string, 
  ry string, 
  ty string, 
  vt string, 
  url string, 
  ref string, 
  pv string, 
  py string, 
  st string, 
  ilu string, 
  pcode string, 
  weid string, 
  r string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/letvtime'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418115198')
;
CREATE EXTERNAL TABLE tv_report.mobileappboot(
  sv string, 
  mobile string, 
  type string, 
  os string, 
  osver string, 
  aver string, 
  sid string, 
  mac string, 
  udid string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  ts string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/mobileappboot'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421663334')
;
CREATE  TABLE tv_report.ott_box(
  id bigint, 
  mac string, 
  type string, 
  boxgroup string, 
  oprid string, 
  time bigint, 
  smart int)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/ott_box'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='2', 
  'transient_lastDdlTime'='1447963858', 
  'numRows'='0', 
  'totalSize'='21624878', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_ad(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  ver string COMMENT 'The version of the log', 
  act string, 
  p1 string, 
  p2 string, 
  p3 string, 
  uuid string, 
  err string, 
  atype string COMMENT 'The ad type, such as : pre-ad, pause-ad...', 
  id string, 
  ct string, 
  ut string COMMENT 'The durational time from requesting to ac.', 
  dur_total string, 
  dur string, 
  ch string, 
  cid string, 
  mmsid string, 
  ref string, 
  vlen string, 
  py string COMMENT 'Extended field, which means the play attribute.', 
  pid string, 
  sys string, 
  vid string, 
  ftype string, 
  aps string, 
  loc string, 
  ord string, 
  ry string COMMENT 'The retry counts of the last report log, regardless of whether it is successful', 
  oiid string, 
  v string COMMENT 'The download speed.', 
  size string, 
  ontime string, 
  uid string, 
  vuser string COMMENT 'This field has not used currently.', 
  ty string COMMENT 'The type of video play, such as : live, demand...', 
  cur_url string, 
  lc string, 
  pv string COMMENT 'The version of the player.', 
  ia string, 
  pcode string, 
  error string, 
  fake string, 
  status string, 
  tdur string)
PARTITIONED BY ( 
  sale_area string, 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_ad'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447322885')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_ad_20150422(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  ver string COMMENT 'The version of the log', 
  act string, 
  p1 string, 
  p2 string, 
  p3 string, 
  uuid string, 
  err string, 
  atype string COMMENT 'The ad type, such as : pre-ad, pause-ad...', 
  id string, 
  ct string, 
  ut string COMMENT 'The durational time from requesting to ac.', 
  dur_total string, 
  dur string, 
  ch string, 
  cid string, 
  mmsid string, 
  ref string, 
  vlen string, 
  py string COMMENT 'Extended field, which means the play attribute.', 
  pid string, 
  sys string, 
  vid string, 
  ftype string, 
  aps string, 
  loc string, 
  ord string, 
  ry string COMMENT 'The retry counts of the last report log, regardless of whether it is successful', 
  oiid string, 
  v string COMMENT 'The download speed.', 
  size string, 
  ontime string, 
  uid string, 
  vuser string COMMENT 'This field has not used currently.', 
  ty string COMMENT 'The type of video play, such as : live, demand...', 
  cur_url string, 
  lc string, 
  pv string COMMENT 'The version of the player.', 
  ia string, 
  pcode string, 
  error string, 
  fake string, 
  status string, 
  tdur string)
PARTITIONED BY ( 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_ad_20150422'
TBLPROPERTIES (
  'transient_lastDdlTime'='1429703793')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_ad_20151112(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  district string, 
  province string, 
  city string, 
  ver string COMMENT 'The version of the log', 
  act string, 
  p1 string, 
  p2 string, 
  p3 string, 
  uuid string, 
  err string, 
  atype string COMMENT 'The ad type, such as : pre-ad, pause-ad...', 
  id string, 
  ct string, 
  ut string COMMENT 'The durational time from requesting to ac.', 
  dur_total string, 
  dur string, 
  ch string, 
  cid string, 
  mmsid string, 
  ref string, 
  vlen string, 
  py string COMMENT 'Extended field, which means the play attribute.', 
  pid string, 
  sys string, 
  vid string, 
  ftype string, 
  aps string, 
  loc string, 
  ord string, 
  ry string COMMENT 'The retry counts of the last report log, regardless of whether it is successful', 
  oiid string, 
  v string COMMENT 'The download speed.', 
  size string, 
  ontime string, 
  uid string, 
  vuser string COMMENT 'This field has not used currently.', 
  ty string COMMENT 'The type of video play, such as : live, demand...', 
  cur_url string, 
  lc string, 
  pv string COMMENT 'The version of the player.', 
  ia string, 
  pcode string, 
  error string, 
  fake string, 
  status string, 
  tdur string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_ad'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1447321962', 
  'transient_lastDdlTime'='1447321962')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_env(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  p1 string, 
  p2 string, 
  p3 string, 
  letv_cookie string, 
  uuid string, 
  mac string, 
  nettype string, 
  os string, 
  os_version string, 
  app string, 
  brand string, 
  terminal_id string, 
  resolution string, 
  browser string, 
  src string, 
  schoolname string, 
  property string, 
  zid string, 
  error string, 
  fake string, 
  ch string, 
  cs string, 
  ssid string, 
  lo string, 
  la string, 
  auid string, 
  apprunid string)
PARTITIONED BY ( 
  sale_area string, 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_env'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447333599')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_env_20150422(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  p1 string, 
  p2 string, 
  p3 string, 
  letv_cookie string, 
  uuid string, 
  mac string, 
  nettype string, 
  os string, 
  os_version string, 
  app string, 
  brand string, 
  terminal_id string, 
  resolution string, 
  browser string, 
  src string, 
  schoolname string, 
  property string, 
  zid string, 
  error string, 
  fake string, 
  ch string, 
  cs string, 
  ssid string, 
  lo string, 
  la string, 
  auid string, 
  apprunid string)
PARTITIONED BY ( 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_env_20150422'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1437658543', 
  'transient_lastDdlTime'='1437658543')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_env_20151112(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  district string, 
  province string, 
  city string, 
  p1 string, 
  p2 string, 
  p3 string, 
  letv_cookie string, 
  uuid string, 
  mac string, 
  nettype string, 
  os string, 
  os_version string, 
  app string, 
  brand string, 
  terminal_id string, 
  resolution string, 
  browser string, 
  src string, 
  schoolname string, 
  property string, 
  zid string, 
  error string, 
  fake string, 
  ch string, 
  cs string, 
  ssid string, 
  lo string, 
  la string, 
  auid string, 
  apprunid string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_env'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1447333584', 
  'transient_lastDdlTime'='1447333584')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_er(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  err string, 
  letv_cookie string, 
  auid string, 
  mac string, 
  nettype string, 
  os string, 
  os_version string, 
  app string, 
  brand string, 
  terminaltype string, 
  model string, 
  resolution string, 
  browser string, 
  src string, 
  property string, 
  cid string, 
  pid string, 
  vid string, 
  zid string, 
  error string, 
  fake string, 
  uuid string)
PARTITIONED BY ( 
  sale_area string, 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_er'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447336814')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_er_20150422(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  err string, 
  letv_cookie string, 
  auid string, 
  mac string, 
  nettype string, 
  os string, 
  os_version string, 
  app string, 
  brand string, 
  terminaltype string, 
  model string, 
  resolution string, 
  browser string, 
  src string, 
  property string, 
  cid string, 
  pid string, 
  vid string, 
  zid string, 
  error string, 
  fake string, 
  uuid string)
PARTITIONED BY ( 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_er_20150422'
TBLPROPERTIES (
  'transient_lastDdlTime'='1429703287')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_er_20151112(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  district string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  act_code string, 
  act_property string, 
  act_result string, 
  cid string, 
  pid string, 
  vid string, 
  uid string, 
  uuid string, 
  letv_cookie string, 
  cur_url string, 
  ch string, 
  pcode string, 
  deviceid string, 
  ilu string, 
  schoolname string, 
  reid string, 
  rearea string, 
  rebucket string, 
  rank string, 
  targeturl string, 
  zid string, 
  liveid string, 
  error string, 
  fake string, 
  nt string, 
  tick string, 
  pn string, 
  vc string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_er'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1447336759', 
  'transient_lastDdlTime'='1447336759')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_hkanyplex(
  vid string, 
  vidname string)
PARTITIONED BY ( 
  bi string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_hkanyplex'
TBLPROPERTIES (
  'numPartitions'='1', 
  'numFiles'='1', 
  'transient_lastDdlTime'='1432808906', 
  'numRows'='0', 
  'totalSize'='7533', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_login(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  uid string, 
  letv_cookie string, 
  deviceid string, 
  uuid string, 
  login_property string, 
  ch string, 
  ref string, 
  login_time string, 
  pcode string, 
  status string, 
  schoolname string, 
  zid string, 
  error string, 
  fake string, 
  apprunid string)
PARTITIONED BY ( 
  sale_area string, 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_login'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447337039')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_login_20150422(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  uid string, 
  letv_cookie string, 
  deviceid string, 
  uuid string, 
  login_property string, 
  ch string, 
  ref string, 
  login_time string, 
  pcode string, 
  status string, 
  schoolname string, 
  zid string, 
  error string, 
  fake string, 
  apprunid string)
PARTITIONED BY ( 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_login_20150422'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1437659038', 
  'transient_lastDdlTime'='1437659038')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_login_20151112(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  district string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  uid string, 
  letv_cookie string, 
  deviceid string, 
  uuid string, 
  login_property string, 
  ch string, 
  ref string, 
  login_time string, 
  pcode string, 
  status string, 
  schoolname string, 
  zid string, 
  error string, 
  fake string, 
  apprunid string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_login'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1447336921', 
  'transient_lastDdlTime'='1447336921')
;
CREATE  TABLE tv_report.oversea_tv_new(
  mac string, 
  model string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_new'
TBLPROPERTIES (
  'numPartitions'='439', 
  'numFiles'='440', 
  'transient_lastDdlTime'='1447956815', 
  'numRows'='0', 
  'totalSize'='794413', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_op(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  act_code string, 
  act_property string, 
  act_result string, 
  cid string, 
  pid string, 
  vid string, 
  uid string, 
  uuid string, 
  letv_cookie string, 
  cur_url string, 
  ch string, 
  pcode string, 
  deviceid string, 
  ilu string, 
  schoolname string, 
  reid string, 
  rearea string, 
  rebucket string, 
  rank string, 
  targeturl string, 
  zid string, 
  liveid string, 
  error string, 
  fake string, 
  nt string, 
  tick string, 
  pn string, 
  vc string, 
  at string, 
  apprunid string)
PARTITIONED BY ( 
  sale_area string, 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_op'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447338179')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_op_20150422(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  act_code string, 
  act_property string, 
  act_result string, 
  cid string, 
  pid string, 
  vid string, 
  uid string, 
  uuid string, 
  letv_cookie string, 
  cur_url string, 
  ch string, 
  pcode string, 
  deviceid string, 
  ilu string, 
  schoolname string, 
  reid string, 
  rearea string, 
  rebucket string, 
  rank string, 
  targeturl string, 
  zid string, 
  liveid string, 
  error string, 
  fake string, 
  nt string, 
  tick string, 
  pn string, 
  vc string, 
  at string, 
  apprunid string)
PARTITIONED BY ( 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_op_20150422'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1437659512', 
  'transient_lastDdlTime'='1437659512')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_op_20151112(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  district string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  act_code string, 
  act_property string, 
  act_result string, 
  cid string, 
  pid string, 
  vid string, 
  uid string, 
  uuid string, 
  letv_cookie string, 
  cur_url string, 
  ch string, 
  pcode string, 
  deviceid string, 
  ilu string, 
  schoolname string, 
  reid string, 
  rearea string, 
  rebucket string, 
  rank string, 
  targeturl string, 
  zid string, 
  liveid string, 
  error string, 
  fake string, 
  nt string, 
  tick string, 
  pn string, 
  vc string, 
  at string, 
  apprunid string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_op'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1447338165', 
  'transient_lastDdlTime'='1447338165')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_play(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  act string, 
  error string, 
  pt string, 
  utime string, 
  uid string, 
  letv_cookie string, 
  deviceid string, 
  uuid string, 
  cid string, 
  pid string, 
  vid string, 
  vlen string, 
  ch string, 
  retry string, 
  playtype string, 
  videotype string, 
  url string, 
  ref string, 
  player_version string, 
  property string, 
  station string, 
  ilu string, 
  pcode string, 
  weid string, 
  ap string, 
  schoolname string, 
  prg string, 
  zid string, 
  liveid string, 
  err_msg string, 
  fake string, 
  cdnip string, 
  provider string, 
  nt string, 
  utype string, 
  r string, 
  stc string, 
  sid string, 
  prl string, 
  cdev string, 
  caid string, 
  ctime string, 
  pay string, 
  joint string, 
  ipt string, 
  custid string, 
  apprunid string)
PARTITIONED BY ( 
  sale_area string, 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_play'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447338709')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_play_20150422(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  act string, 
  error string, 
  pt string, 
  utime string, 
  uid string, 
  letv_cookie string, 
  deviceid string, 
  uuid string, 
  cid string, 
  pid string, 
  vid string, 
  vlen string, 
  ch string, 
  retry string, 
  playtype string, 
  videotype string, 
  url string, 
  ref string, 
  player_version string, 
  property string, 
  station string, 
  ilu string, 
  pcode string, 
  weid string, 
  ap string, 
  schoolname string, 
  prg string, 
  zid string, 
  liveid string, 
  err_msg string, 
  fake string, 
  cdnip string, 
  provider string, 
  nt string, 
  utype string, 
  r string, 
  stc string, 
  sid string, 
  prl string, 
  cdev string, 
  caid string, 
  ctime string, 
  pay string, 
  joint string, 
  ipt string, 
  custid string, 
  apprunid string)
PARTITIONED BY ( 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_play_20150422'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1437660414', 
  'transient_lastDdlTime'='1437660414')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_play_20151112(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  district string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  act string, 
  error string, 
  pt string, 
  utime string, 
  uid string, 
  letv_cookie string, 
  deviceid string, 
  uuid string, 
  cid string, 
  pid string, 
  vid string, 
  vlen string, 
  ch string, 
  retry string, 
  playtype string, 
  videotype string, 
  url string, 
  ref string, 
  player_version string, 
  property string, 
  station string, 
  ilu string, 
  pcode string, 
  weid string, 
  ap string, 
  schoolname string, 
  prg string, 
  zid string, 
  liveid string, 
  err_msg string, 
  fake string, 
  cdnip string, 
  provider string, 
  nt string, 
  utype string, 
  r string, 
  stc string, 
  sid string, 
  prl string, 
  cdev string, 
  caid string, 
  ctime string, 
  pay string, 
  joint string, 
  ipt string, 
  custid string, 
  apprunid string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_play'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1447338696', 
  'transient_lastDdlTime'='1447338696')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_pv(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  cid string, 
  pid string, 
  vid string, 
  uid string, 
  uuid string, 
  letv_cookie string, 
  ref string, 
  ct string, 
  rcid string, 
  kw string, 
  cur_url string, 
  ch string, 
  click_area string, 
  pcode string, 
  deviceid string, 
  ilu string, 
  weid string, 
  schoolname string, 
  property string, 
  zid string, 
  error string, 
  fake string, 
  apprunid string)
PARTITIONED BY ( 
  sale_area string, 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_pv'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447339687')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_pv_20150422(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  cid string, 
  pid string, 
  vid string, 
  uid string, 
  uuid string, 
  letv_cookie string, 
  ref string, 
  ct string, 
  rcid string, 
  kw string, 
  cur_url string, 
  ch string, 
  click_area string, 
  pcode string, 
  deviceid string, 
  ilu string, 
  weid string, 
  schoolname string, 
  property string, 
  zid string, 
  error string, 
  fake string, 
  apprunid string)
PARTITIONED BY ( 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_pv_20150422'
TBLPROPERTIES (
  'last_modified_by'='zhengyu', 
  'last_modified_time'='1437723238', 
  'transient_lastDdlTime'='1437723238')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_pv_20151112(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  district string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  cid string, 
  pid string, 
  vid string, 
  uid string, 
  uuid string, 
  letv_cookie string, 
  ref string, 
  ct string, 
  rcid string, 
  kw string, 
  cur_url string, 
  ch string, 
  click_area string, 
  pcode string, 
  deviceid string, 
  ilu string, 
  weid string, 
  schoolname string, 
  property string, 
  zid string, 
  error string, 
  fake string, 
  apprunid string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_pv'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1447339672', 
  'transient_lastDdlTime'='1447339672')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_qy(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  search_id string, 
  type string, 
  position string, 
  click string, 
  uid string, 
  uuid string, 
  letv_cookie string, 
  deviceid string, 
  ch string, 
  ilu string, 
  query string, 
  pageid string, 
  result string, 
  seid string, 
  schoolname string, 
  zid string, 
  error string, 
  fake string, 
  ref string, 
  src string, 
  way string, 
  apprunid string)
PARTITIONED BY ( 
  sale_area string, 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_qy'
TBLPROPERTIES (
  'transient_lastDdlTime'='1447340709')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_qy_20150422(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  area string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  search_id string, 
  type string, 
  position string, 
  click string, 
  uid string, 
  uuid string, 
  letv_cookie string, 
  deviceid string, 
  ch string, 
  ilu string, 
  query string, 
  pageid string, 
  result string, 
  seid string, 
  schoolname string, 
  zid string, 
  error string, 
  fake string, 
  ref string, 
  src string, 
  way string, 
  apprunid string)
PARTITIONED BY ( 
  dt string, 
  hour string, 
  product string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_qy_20150422'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1437660996', 
  'transient_lastDdlTime'='1437660996')
;
CREATE EXTERNAL TABLE tv_report.oversea_tv_qy_20151112(
  ip string, 
  time string, 
  cookie string, 
  inu string, 
  country string, 
  district string, 
  province string, 
  city string, 
  log_version string, 
  p1 string, 
  p2 string, 
  p3 string, 
  search_id string, 
  type string, 
  position string, 
  click string, 
  uid string, 
  uuid string, 
  letv_cookie string, 
  deviceid string, 
  ch string, 
  ilu string, 
  query string, 
  pageid string, 
  result string, 
  seid string, 
  schoolname string, 
  zid string, 
  error string, 
  fake string, 
  ref string, 
  src string, 
  way string, 
  apprunid string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/oversea_tv_qy'
TBLPROPERTIES (
  'last_modified_by'='zhangjiachao', 
  'last_modified_time'='1447340659', 
  'transient_lastDdlTime'='1447340659')
;
CREATE EXTERNAL TABLE tv_report.overseas_tv_activate_count(
  a string, 
  d string, 
  mode string, 
  total int)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/overseas_tv_activate_count'
TBLPROPERTIES (
  'transient_lastDdlTime'='1423635610')
;
CREATE EXTERNAL TABLE tv_report.overseas_tv_activate_delta(
  a string, 
  d string, 
  mode string, 
  total int)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/overseas_tv_activate_delta'
TBLPROPERTIES (
  'transient_lastDdlTime'='1423635610')
;
CREATE EXTERNAL TABLE tv_report.overseas_tv_bootstrap_all(
  a string, 
  d string, 
  mode string, 
  total int, 
  mtotal int)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/overseas_tv_bootstrap_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1423635611')
;
CREATE EXTERNAL TABLE tv_report.overseas_tv_bootstrap_daily(
  a string, 
  d string, 
  mode string, 
  total int, 
  mtotal int)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/overseas_tv_bootstrap_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1423635611')
;
CREATE EXTERNAL TABLE tv_report.overseas_tv_login_all(
  a string, 
  d string, 
  mode string, 
  total int)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/overseas_tv_login_all'
TBLPROPERTIES (
  'transient_lastDdlTime'='1423635612')
;
CREATE EXTERNAL TABLE tv_report.overseas_tv_login_daily(
  a string, 
  d string, 
  mode string, 
  total int)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/overseas_tv_login_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1423635612')
;
CREATE EXTERNAL TABLE tv_report.overseas_tv_play_daily(
  a string, 
  d string, 
  mode string, 
  vv int, 
  cv int, 
  pt int, 
  uv int)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/overseas_tv_play_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1423635613')
;
CREATE EXTERNAL TABLE tv_report.playblock(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  pn string, 
  aver string, 
  uuid string, 
  type string, 
  dur string, 
  extvendor string, 
  extbrand string, 
  breason string, 
  bflag string, 
  crate string, 
  dspeed string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/playblock'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418115708')
;
CREATE EXTERNAL TABLE tv_report.playend(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  pn string, 
  aver string, 
  uuid string, 
  type string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/playend'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418115803')
;
CREATE EXTERNAL TABLE tv_report.playerror(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  pn string, 
  aver string, 
  uuid string, 
  type string, 
  url string, 
  errid string, 
  errcode string, 
  haslog string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/playerror'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421663462')
;
CREATE EXTERNAL TABLE tv_report.playinit(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  pn string, 
  aver string, 
  uuid string, 
  type string, 
  url string, 
  ut string, 
  uta string, 
  utb string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/playinit'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418115818')
;
CREATE EXTERNAL TABLE tv_report.playseek(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  pn string, 
  aver string, 
  uuid string, 
  type string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/playseek'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418115995')
;
CREATE EXTERNAL TABLE tv_report.playstart(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  pn string, 
  aver string, 
  uuid string, 
  type string, 
  url string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/playstart'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418116035')
;
CREATE EXTERNAL TABLE tv_report.playtime(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  pn string, 
  aver string, 
  uuid string, 
  type string, 
  dur string, 
  crcng string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/playtime'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418116120')
;
CREATE  TABLE tv_report.resource_app(
  pn string, 
  name string, 
  type int, 
  createtime string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/resource_app'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='1', 
  'transient_lastDdlTime'='1447963757', 
  'numRows'='0', 
  'totalSize'='3180704', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.resource_channellist(
  ch string, 
  channelname string, 
  numerickey int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\u0001' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/resource_channellist'
TBLPROPERTIES (
  'transient_lastDdlTime'='1441535545')
;
CREATE EXTERNAL TABLE tv_report.resource_country(
  code string, 
  name string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/resource_country'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='1', 
  'transient_lastDdlTime'='1426232066', 
  'numRows'='0', 
  'totalSize'='2635', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.resource_province(
  id int, 
  name string, 
  country string, 
  code string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/resource_province'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='1', 
  'transient_lastDdlTime'='1443000415', 
  'numRows'='0', 
  'totalSize'='646', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.sdkappcrash(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  sdkver string, 
  wfmac string, 
  wdmac string, 
  udid string, 
  mac string, 
  imei string, 
  uuid string, 
  adid string, 
  os string, 
  osver string, 
  sn string, 
  appkey string, 
  appver string, 
  pn string, 
  dn string, 
  letv string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  channel string, 
  ro string, 
  nt string, 
  bundle string, 
  dvt string, 
  pvt string, 
  sid string, 
  en string, 
  es string, 
  seq string)
PARTITIONED BY ( 
  dt string, 
  pt1 string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/sdkappcrash'
TBLPROPERTIES (
  'transient_lastDdlTime'='1422363945')
;
CREATE EXTERNAL TABLE tv_report.sdkappdur(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  sdkver string, 
  wfmac string, 
  wdmac string, 
  udid string, 
  mac string, 
  imei string, 
  uuid string, 
  adid string, 
  os string, 
  osver string, 
  sn string, 
  appkey string, 
  appver string, 
  pn string, 
  dn string, 
  letv string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  channel string, 
  ro string, 
  nt string, 
  bundle string, 
  dvt string, 
  pvt string, 
  sid string, 
  dur string, 
  seq string)
PARTITIONED BY ( 
  dt string, 
  pt1 string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/sdkappdur'
TBLPROPERTIES (
  'transient_lastDdlTime'='1422364067')
;
CREATE EXTERNAL TABLE tv_report.sdkapperror(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  sdkver string, 
  wfmac string, 
  wdmac string, 
  udid string, 
  mac string, 
  imei string, 
  uuid string, 
  adid string, 
  os string, 
  osver string, 
  sn string, 
  appkey string, 
  appver string, 
  pn string, 
  dn string, 
  letv string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  channel string, 
  ro string, 
  nt string, 
  bundle string, 
  dvt string, 
  pvt string, 
  sid string, 
  en string, 
  es string, 
  seq string)
PARTITIONED BY ( 
  dt string, 
  pt1 string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/sdkapperror'
TBLPROPERTIES (
  'transient_lastDdlTime'='1409293730')
;
CREATE EXTERNAL TABLE tv_report.sdkapppagejump(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  sdkver string, 
  wfmac string, 
  wdmac string, 
  udid string, 
  mac string, 
  imei string, 
  uuid string, 
  adid string, 
  os string, 
  osver string, 
  sn string, 
  appkey string, 
  appver string, 
  pn string, 
  dn string, 
  letv string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  channel string, 
  ro string, 
  nt string, 
  bundle string, 
  dvt string, 
  pvt string, 
  sid string, 
  pgn string, 
  ppn string, 
  pgt string, 
  st string, 
  seq string)
PARTITIONED BY ( 
  dt string, 
  pt1 string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/sdkapppagejump'
TBLPROPERTIES (
  'transient_lastDdlTime'='1409293765')
;
CREATE EXTERNAL TABLE tv_report.sdkappstartup(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  sdkver string, 
  wfmac string, 
  wdmac string, 
  udid string, 
  mac string, 
  imei string, 
  uuid string, 
  adid string, 
  os string, 
  osver string, 
  sn string, 
  appkey string, 
  appver string, 
  pn string, 
  dn string, 
  letv string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  channel string, 
  ro string, 
  nt string, 
  bundle string, 
  dvt string, 
  pvt string, 
  sid string, 
  seq string)
PARTITIONED BY ( 
  dt string, 
  pt1 string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/sdkappstartup'
TBLPROPERTIES (
  'transient_lastDdlTime'='1409293806')
;
CREATE EXTERNAL TABLE tv_report.sdkcustomevent(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  sdkver string, 
  wfmac string, 
  wdmac string, 
  udid string, 
  mac string, 
  imei string, 
  uuid string, 
  adid string, 
  os string, 
  osver string, 
  sn string, 
  appkey string, 
  appver string, 
  pn string, 
  dn string, 
  letv string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  channel string, 
  ro string, 
  nt string, 
  bundle string, 
  dvt string, 
  pvt string, 
  sid string, 
  eid string, 
  peid string, 
  ep map<string,string>, 
  edur string, 
  seq string)
PARTITIONED BY ( 
  dt string, 
  pt1 string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/sdkcustomevent'
TBLPROPERTIES (
  'transient_lastDdlTime'='1409293843')
;
CREATE EXTERNAL TABLE tv_report.shutdown(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/shutdown'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421663846')
;
CREATE EXTERNAL TABLE tv_report.stag_appstartup_mac_pn(
  mac string, 
  pn string, 
  model string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stag_appstartup_mac_pn'
TBLPROPERTIES (
  'numPartitions'='271', 
  'numFiles'='271', 
  'transient_lastDdlTime'='1447963795', 
  'numRows'='0', 
  'totalSize'='47059602964', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.stat_crash_daily(
  model string, 
  province string, 
  channel string, 
  appkey string, 
  appver string, 
  total string, 
  mtotal string, 
  lastupdate string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_crash_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285377')
;
CREATE EXTERNAL TABLE tv_report.stat_crash_total(
  model string, 
  province string, 
  channel string, 
  appkey string, 
  appver string, 
  total string, 
  mtotal string, 
  lastupdate string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_crash_total'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285377')
;
CREATE EXTERNAL TABLE tv_report.stat_dur_daily(
  year string, 
  month string, 
  day string, 
  model string, 
  province string, 
  channel string, 
  appkey string, 
  appver string, 
  dur int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_dur_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285377')
;
CREATE EXTERNAL TABLE tv_report.stat_dur_total(
  year string, 
  month string, 
  day string, 
  model string, 
  province string, 
  channel string, 
  appkey string, 
  appver string, 
  dur int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_dur_total'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285377')
;
CREATE EXTERNAL TABLE tv_report.stat_error_detail(
  ts string, 
  ip string, 
  mac string, 
  hwid string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sdkver string, 
  wfmac string, 
  udid string, 
  imei string, 
  uuid string, 
  adid string, 
  appkey string, 
  appver string, 
  channel string, 
  sid string, 
  en string, 
  es string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_error_detail'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285377')
;
CREATE EXTERNAL TABLE tv_report.stat_error_total(
  province string, 
  appkey string, 
  appver string, 
  en string, 
  td_error_ts string, 
  lastupdate string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_error_total'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285377')
;
CREATE EXTERNAL TABLE tv_report.stat_new_daily(
  year string, 
  month string, 
  day string, 
  model string, 
  province string, 
  channel string, 
  appkey string, 
  version string, 
  total string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_new_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285377')
;
CREATE EXTERNAL TABLE tv_report.stat_new_total(
  year string, 
  month string, 
  day string, 
  model string, 
  province string, 
  channel string, 
  appkey string, 
  version string, 
  total int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_new_total'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285378')
;
CREATE EXTERNAL TABLE tv_report.stat_open_daily(
  year string, 
  month string, 
  day string, 
  model string, 
  province string, 
  channel string, 
  appkey string, 
  appver string, 
  total string, 
  mtotal string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_open_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285378')
;
CREATE EXTERNAL TABLE tv_report.stat_open_monthly(
  model string, 
  province string, 
  channel string, 
  appkey string, 
  appver string, 
  total string, 
  mtotal string, 
  lastupdate string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_open_monthly'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285378')
;
CREATE EXTERNAL TABLE tv_report.stat_open_total(
  year string, 
  month string, 
  day string, 
  model string, 
  province string, 
  channel string, 
  appkey string, 
  appver string, 
  total string, 
  mtotal string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_open_total'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285378')
;
CREATE EXTERNAL TABLE tv_report.stat_open_weekly(
  model string, 
  province string, 
  channel string, 
  appkey string, 
  appver string, 
  total string, 
  mtotal string, 
  lastupdate string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_open_weekly'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285379')
;
CREATE EXTERNAL TABLE tv_report.stat_pagejump_daily(
  year string, 
  month string, 
  day string, 
  province string, 
  appkey string, 
  appver string, 
  pgn string, 
  td_pagejump_ts int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_pagejump_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285379')
;
CREATE EXTERNAL TABLE tv_report.stat_pageview_daily(
  model string, 
  province string, 
  channel string, 
  appkey string, 
  appver string, 
  pgn string, 
  total string, 
  mtotal string, 
  lastupdate string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_pageview_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285379')
;
CREATE EXTERNAL TABLE tv_report.stat_pageview_total(
  province string, 
  channel string, 
  appkey string, 
  appver string, 
  pgn string, 
  total int, 
  mtotal int, 
  tol_st int)
PARTITIONED BY ( 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_pageview_total'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418285379')
;
CREATE EXTERNAL TABLE tv_report.stat_url_daily(
  url string, 
  total string)
PARTITIONED BY ( 
  dt string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
  LINES TERMINATED BY '\n' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/stat_url_daily'
TBLPROPERTIES (
  'transient_lastDdlTime'='1414218873')
;
CREATE EXTERNAL TABLE tv_report.surf(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  url string, 
  ont string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/surf'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418116174')
;
CREATE  TABLE tv_report.temp(
  mac string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.lazy.LazySimpleSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/temp'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='24', 
  'transient_lastDdlTime'='1426669563', 
  'numRows'='0', 
  'totalSize'='743210', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.tvaction(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  action string, 
  props map<string,string>, 
  ecode string, 
  emsg string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string, 
  pt1 string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/tvaction'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418116781')
;
CREATE EXTERNAL TABLE tv_report.tvplusend(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  vern string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  login string, 
  uuid string, 
  ch string, 
  chn string, 
  pr string, 
  prn string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/tvplusend'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421664503')
;
CREATE EXTERNAL TABLE tv_report.tvplusinit(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  vern string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  login string, 
  uuid string, 
  ch string, 
  chn string, 
  pr string, 
  prn string, 
  srcch string, 
  srcchn string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/tvplusinit'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421664552')
;
CREATE EXTERNAL TABLE tv_report.tvplusplay(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  vern string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  login string, 
  uuid string, 
  ch string, 
  chn string, 
  pr string, 
  prn string, 
  srcch string, 
  srcchn string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/tvplusplay'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421664642')
;
CREATE EXTERNAL TABLE tv_report.tvplustime(
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  sv string, 
  mac string, 
  ver string, 
  vern string, 
  hwbrand string, 
  hwdevice string, 
  hwmodel string, 
  hwhardware string, 
  hwid string, 
  hwserial string, 
  model string, 
  brand string, 
  ro string, 
  nt string, 
  login string, 
  uuid string, 
  ch string, 
  chn string, 
  pr string, 
  prn string, 
  dur string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/tvplustime'
TBLPROPERTIES (
  'transient_lastDdlTime'='1421664685')
;
CREATE EXTERNAL TABLE tv_report.tvremoterbtn(
  flag int, 
  ts bigint, 
  ip string, 
  country string, 
  province int, 
  district int, 
  isp int, 
  sv string, 
  mac string, 
  model string, 
  modelid int, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  extvendor string, 
  extbrand string, 
  type int, 
  event map<string,bigint>)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/tvremoterbtn'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418116764')
;
CREATE  TABLE tv_report.unicom_mac(
  mac string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY '\t' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/unicom_mac'
TBLPROPERTIES (
  'numPartitions'='0', 
  'numFiles'='1', 
  'transient_lastDdlTime'='1446431561', 
  'numRows'='0', 
  'totalSize'='8419', 
  'rawDataSize'='0')
;
CREATE EXTERNAL TABLE tv_report.updownloadfinish(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  usn string, 
  result string, 
  ecode string, 
  emsg string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/updownloadfinish'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418116826')
;
CREATE EXTERNAL TABLE tv_report.updownloadstartup(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  usn string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/updownloadstartup'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418116892')
;
CREATE EXTERNAL TABLE tv_report.upfinish(
  sv string, 
  flag string, 
  ts string, 
  ip string, 
  country string, 
  province string, 
  district string, 
  isp string, 
  mac string, 
  model string, 
  modelid string, 
  groupid string, 
  sn string, 
  osver string, 
  osvern string, 
  uiver string, 
  sid string, 
  usn string, 
  result string, 
  type string, 
  strategy string, 
  ust string, 
  uft string, 
  dst string, 
  dft string, 
  ecode string, 
  emsg string, 
  extvendor string, 
  extbrand string)
PARTITIONED BY ( 
  area string, 
  dt string)
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.RCFileOutputFormat'
LOCATION
  'hdfs://centos10-80.letv.cn:8020/user/cloudland/tv/v_newer/tv_report.db/upfinish'
TBLPROPERTIES (
  'transient_lastDdlTime'='1418116941')

