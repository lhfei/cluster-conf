#!/bin/bash

# hadoop home directory
hhome=/usr/hdp/2.3.2.0-2950/hadoop

#user home directory
uhome=/user/cloudland

$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/tv

$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/phone/datamarts 
$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/phone/demension
$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/phone/subject

$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/tv/datamarts 
$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/tv/demension
$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/tv/subject

$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/phone/datamarts/dwd.db
$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/phone/demension/dwd.db
$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/phone/subject/dwd.db

$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/phone/datamarts/dmr.db
$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/phone/demension/dmr.db
$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/phone/subject/dmr.db

$hhome/bin/hdfs dfs -mkdir -p $uhome/warehouse/tv/datamarts/tv_report.db




bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/dwd.db/  $uhome/phone/datamarts/dwd.db/
bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/dwd.db/  $uhome/phone/datamarts/dwd.db/
bin/hadoop distcp -update -skipcrccheck hftp://10.149.10.99:50070/user/hive/warehouse/dwd.db/  $uhome/phone/datamarts/dwd.db/