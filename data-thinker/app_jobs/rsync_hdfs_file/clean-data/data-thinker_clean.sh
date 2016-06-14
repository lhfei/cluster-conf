#!/bin/bash

#########################################################
# Clean old hdfs data in data-thinker cluster.
#
# +-- keep 30 days 
# --/user/cloudland/phone/v_newer/
#   .data_sum.db
#   .dwd.db
#   .source.db
#
# +-- keep 7 days
# --/apps/hive/warehouse/
#   .scloud_log.db
#
#
# @author Hefei Li
# @since Feb 03, 2016
#########################################################

hname="/usr/hdp/2.3.2.0-2950/hadoop"

cleanPhoneLogs() {
    current=$(date +%Y%m%d -d -30day)

    ${hname}/bin/hdfs dfs -rm -r -skipTrash /user/cloudland/phone/v_newer/*/*/dt=${current}*
    ${hname}/bin/hdfs dfs -rm -r -skipTrash /user/cloudland/warehouse/phone/datamarts/*/*/dt=${current}*
}

cleanScloudLogs() {
    current=$(date +%Y-%m-%d -d -7day)

    ${hname}/bin/hdfs dfs -rm -r -skipTrash /apps/hive/warehouse/*/*/day=${current}*
}

cleanPhoneLogs

cleanScloudLogs
