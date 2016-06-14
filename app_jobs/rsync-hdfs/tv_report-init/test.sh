#!/bin/bash

#schema="tv_report"
uhome="hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse/tv/datamarts"
hname="/usr/hdp/2.3.2.0-2950/hadoop"
tables_list_path="/letv/cloudland/app_jobs/rsync-hdfs"
destination="hdfs://basic.internal.hadoop.10-148-10-10.scloud.letv.com:8020/user/cloudland/warehouse"
origin="hftp://10.149.10.99:50070/user/hive/warehouse"

# check parameters: 
if (("$#" != 3))
then
  echo "$(date) error: Schema and start, end range must be assigned. And the start must be less then the end."
  echo "Usage: ./<schema>_init_data.sh <schema> 1 1"
  exit 1
fi

schema=$1
start=$2
end=$3

loadMultiPar() {
  for ((i=${start}; i<=${end}; i++))
  do
    #current=$(date +%Y%m%d -d -${i}day)
    y_m=$(date +%Y%m -d -${i}day)     #format data: year and month.
    y_m_d=$(date +%Y%m%d -d -${i}day)   #format data: year,month and day.
    
    echo "=====$(date) current is [${y_m} == ${y_m_d}] ===="

    ger_pt2s=("chanDtFavoriteAdd" "chanFavoriteAdd" "chanFavoriteCall" "chanFavoriteClick" "desktopShow" "historyChanCall" "historyChanClick" "searchStart" "shPosterClick" )
    for ger_pt2 in "${ger_pt2s[@]}"
    do
      echo "=====$(date) [${schema}.geraction] partition ${y_m_d} data start loading  ..."
      hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/geraction/ui/${ger_pt2}/*'        INTO TABLE tv_report.geraction PARTITION (dt='${y_m_d}', pt1='ui', pt2='${ger_pt2}'); "
      echo "=====$(date) [${schema}.geraction] partition ${y_m_d} data loaded  ..." 
    done

    sc_pt1s=("afc9b2586ff55d7cc8184b7ddda3126f" "b2ff638521f421de4cafc81499ecf3ef")
    for sc_pt1 in "${sc_pt1s[@]}"
    do
      echo "=====$(date) [${schema}.sdkappcrash] partition ${y_m_d} data start loading  ..."
      hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/sdkappcrash/${sc_pt1}/*'        INTO TABLE tv_report.sdkappcrash PARTITION (dt='${y_m_d}', pt1='${sc_pt1}'); "
      echo "=====$(date) [${schema}.sdkappcrash] partition ${y_m_d} data loaded  ..." 
    done

    sda_pt1s=("afc9b2586ff55d7cc8184b7ddda3126f" "b2ff638521f421de4cafc81499ecf3ef")
    for sda_pt1 in "${sda_pt1s[@]}"
    do
      echo "=====$(date) [${schema}.sdkappdur] partition ${y_m_d} data start loading  ..."
      hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/sdkappdur/${sda_pt1}/*'        INTO TABLE tv_report.sdkappdur PARTITION (dt='${y_m_d}', pt1='${sda_pt1}'); "
      echo "=====$(date) [${schema}.sdkappdur] partition ${y_m_d} data loaded  ..." 
    done

    sdj_pt1s=("afc9b2586ff55d7cc8184b7ddda3126f" "b2ff638521f421de4cafc81499ecf3ef")
    for sdj_pt1 in "${sdj_pt1s[@]}"
    do
      echo "=====$(date) [${schema}.sdkapppagejump] partition ${y_m_d} data start loading  ..."
      hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/sdkapppagejump/${sdj_pt1}/*'       INTO TABLE tv_report.sdkapppagejump PARTITION (dt='${y_m_d}', pt1='${sdj_pt1}'); "
      echo "=====$(date) [${schema}.sdkapppagejump] partition ${y_m_d} data loaded  ..." 
    done

    sds_pt1s=("0925880738509a827b6568964194575e" "230b13860b0e18e1f7e144061371f249" "2794dc5e2205bb571e5244bbd5861a89" "47daa3f81adb3dd0bd6b7ffd6cdf2492" "684422363654174a71007c86efa0455b" "a680cfb56620a19fe65590c42d09e270" "afc9b2586ff55d7cc8184b7ddda3126f" "b2ff638521f421de4cafc81499ecf3ef" "b5a073a1f96b2d6be5961b72c141d31a" "bd07f208195c039d9430b420b60bbde3" "ffcf5be4e719765f49445a239c9d9841" )
    for sds_pt1 in "#{sds_pt1s[@]}"
    do
      echo "=====$(date) [${schema}.sdkappstartup] partition ${y_m_d} data start loading  ..."
      hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/sdkappstartup/${sds_pt1}/*'      INTO TABLE tv_report.sdkappstartup PARTITION (dt='${y_m_d}', pt1='${sds_pt1}'); "
      echo "=====$(date) [${schema}.sdkappstartup] partition ${y_m_d} data loaded  ..." 
    done

    sdc_pt1s=("0925880738509a827b6568964194575e" "2794dc5e2205bb571e5244bbd5861a89" "47daa3f81adb3dd0bd6b7ffd6cdf2492" "684422363654174a71007c86efa0455b" "a680cfb56620a19fe65590c42d09e270" "afc9b2586ff55d7cc8184b7ddda3126f" "b2ff638521f421de4cafc81499ecf3ef" "b5a073a1f96b2d6be5961b72c141d31a" "bd07f208195c039d9430b420b60bbde3" "ffcf5be4e719765f49445a239c9d9841")
    for sdc_pt1 in "${sdc_pt1s[@]}"
    do
      echo "=====$(date) [${schema}.sdkcustomevent] partition ${y_m_d} data start loading  ..."
      hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/sdkcustomevent/${sdc_pt1}/*'       INTO TABLE tv_report.sdkcustomevent PARTITION (dt='${y_m_d}', pt1='${sdc_pt1}'); " 
      echo "=====$(date) [${schema}.sdkcustomevent] partition ${y_m_d} data loaded  ..." 
    done


  done
}



# start load
echo "====$(date) Range is [${start}, ${end}] ===="
loadMultiPar 


