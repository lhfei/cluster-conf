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

    ## eval pt1 partition of values
    pts=("appAdd" "appCallMenu" "appClose" "appManage" "appMove" "appNewFolder" "appOpen" "appdPosterClick" "appdPosterShow" "camHeartbeat" "cameraIn" "cameraopen" "cardInteraction" "cardinteractionpop" "chanDtFavoriteAdd" "chanFavoriteAdd" "chanFavoriteCall" "chanFavoriteClick" "ctrlUpgResult" "ctrlWakeup" "desktopBootstrap" "desktopManClose" "desktopManOpen" "desktopShow" "desktopShow" "desktopShowContent" "desktopShowTab" "desktopVideo" "historyChanCall" "historyChanClick" "hometimeConnect" "hometimeHandup" "hometimeOpen" "lepiPhoto" "lepiVideo" "lunChAdComplete" "lunChAdError" "lunChAdPlay" "lunChAdStop" "messageClick" "messageShow" "msgBtnClick" "msgView" "prmdPosterClick" "programchoose" "programshow" "rcmdVappClick" "rcmdVideoClick" "rcmdVideoShow" "renewMsgClick" "renewMsgShow" "screensaverClick" "screensaverHeartbeat" "screensaverPicShow" "screensaverShow" "searchStart" "shPosterClick" "shopAppCollectClick" "shopAppCollectVideoPlay" "shopAppSpeSubPlay" "shopAppSpeSubShow" "shopAppTabShow" "shopAppVideoAdd" "shopAppVideoOpe" "shopAppVideoPlay" "shopdPosterClick" "signalSource" "somaticCtMode" "somaticDesktopSw" "somaticFbthClick" "somaticLetvSw" "somaticStartup" "themeDetailClick" "themeMytabClick" "themeStartup" "themeUse" "topbarAppear" "topbarClick" "tvView" "uninstall_app" "userLogin" "userOnline" "userRegister")
    for pt1 in "${pts[@]}"
    do
      echo "=====$(date) [${schema}.tvaction] partition ${y_m_d} data start loading  ..."
      hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/tvaction/${pt1}/*'         INTO TABLE tv_report.tvaction PARTITION (area='land', dt='${y_m_d}', pt1='${pt1}'); "  
      hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/tvaction/${pt1}/*'           INTO TABLE tv_report.tvaction PARTITION (area='hk',   dt='${y_m_d}', pt1='${pt1}'); "  
      hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvaction/${pt1}/*'           INTO TABLE tv_report.tvaction PARTITION (area='us',   dt='${y_m_d}', pt1='${pt1}'); "
      echo "=====$(date) [${schema}.tvaction] partition ${y_m_d} data loaded  ..." 
    done

  done
}

loadPartition() {
  for ((i=${start}; i<=${end}; i++))
  do
    #current=$(date +%Y%m%d -d -${i}day)
    y_m=$(date +%Y%m -d -${i}day)     #format data: year and month.
    y_m_d=$(date +%Y%m%d -d -${i}day)   #format data: year,month and day.
    
    echo "=====$(date) current is [${y_m} == ${y_m_d}] ===="

    echo "=====$(date) [${schema}.appinstall] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/appinstall/*'         INTO TABLE tv_report.appinstall PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/appinstall/*'           INTO TABLE tv_report.appinstall PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/appinstall/*'           INTO TABLE tv_report.appinstall PARTITION (area='us', dt='${y_m_d}'); "  

    echo "=====$(date) [${schema}.appuninstall] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/appuninstall/*'       INTO TABLE tv_report.appuninstall PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/appuninstall/*'         INTO TABLE tv_report.appuninstall PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/appuninstall/*'         INTO TABLE tv_report.appuninstall PARTITION (area='us', dt='${y_m_d}'); " 

    echo "=====$(date) [${schema}.appstartup] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/appstartup/*'         INTO TABLE tv_report.avro_appstartup PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/appstartup/*'           INTO TABLE tv_report.avro_appstartup PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/appstartup/*'           INTO TABLE tv_report.avro_appstartup PARTITION (area='us', dt='${y_m_d}'); " 

    echo "=====$(date) [${schema}.bootstrap] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/bootstrap/*'          INTO TABLE tv_report.avro_bootstrap PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/bootstrap/*'            INTO TABLE tv_report.avro_bootstrap PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/bootstrap/*'            INTO TABLE tv_report.avro_bootstrap PARTITION (area='us', dt='${y_m_d}'); " 

    echo "=====$(date) [${schema}.endplay] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/endplay/*'            INTO TABLE tv_report.avro_endplay PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/endplay/*'              INTO TABLE tv_report.avro_endplay PARTITION (area='us', dt='${y_m_d}'); "

    echo "=====$(date) [${schema}.heartbeat] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/heartbeat/*'          INTO TABLE tv_report.avro_heartbeat PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/heartbeat/*'            INTO TABLE tv_report.avro_heartbeat PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/heartbeat/*'          INTO TABLE tv_report.avro_heartbeat PARTITION (area='us', dt='${y_m_d}'); "
    
    echo "=====$(date) [${schema}.startplay] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/startplay/*'        INTO TABLE tv_report.avro_startplay PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/startplay/*'          INTO TABLE tv_report.avro_startplay PARTITION (area='us', dt='${y_m_d}'); "
    
    echo "=====$(date) [${schema}.browserbaidusrch] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserbaidusrch/*'     INTO TABLE tv_report.browserbaidusrch PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserbaidusrch/*'       INTO TABLE tv_report.browserbaidusrch PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.browserbaiduvideosrch] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserbaiduvideosrch/*'  INTO TABLE tv_report.browserbaiduvideosrch PARTITION (area='land', dt='${y_m_d}'); "
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserbaiduvideosrch/*'    INTO TABLE tv_report.browserbaiduvideosrch PARTITION (area='land', dt='${y_m_d}'); "
    
    echo "=====$(date) [${schema}.browserheartbeat] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserheartbeat/*'     INTO TABLE tv_report.browserheartbeat PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserheartbeat/*'       INTO TABLE tv_report.browserheartbeat PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.browserlink] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserlink/*'        INTO TABLE tv_report.browserlink PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserlink/*'          INTO TABLE tv_report.browserlink PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.browsernav] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browsernav/*'         INTO TABLE tv_report.browsernav PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browsernav/*'           INTO TABLE tv_report.browsernav PARTITION (area='us', dt='${y_m_d}'); "
    
    echo "=====$(date) [${schema}.browserplayvideo] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserplayvideo/*'     INTO TABLE tv_report.browserplayvideo PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserplayvideo/*'       INTO TABLE tv_report.browserplayvideo PARTITION (area='us', dt='${y_m_d}'); "
    
    echo "=====$(date) [${schema}.browserstartup] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserstartup/*'       INTO TABLE tv_report.browserstartup PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserstartup/*'         INTO TABLE tv_report.browserstartup PARTITION (area='us', dt='${y_m_d}'); "
    
    echo "=====$(date) [${schema}.cdndispatch] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/cdndispatch/*'        INTO TABLE tv_report.cdndispatch PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/cdndispatch/*'        INTO TABLE tv_report.cdndispatch PARTITION (area='us', dt='${y_m_d}'); "
    
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/errlog/*'           INTO TABLE tv_report.errlog PARTITION (area='hk', dt='${y_m_d}'); " 
    
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/gerheartbeat/ui/*'       INTO TABLE tv_report.gerheartbeat PARTITION (area='land', dt='${y_m_d}', pt1='ui'); "   
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/gerstartup/ui/*'         INTO TABLE tv_report.gerstartup PARTITION (area='land', dt='${y_m_d}', pt1='ui'); "
    
    echo "=====$(date) [${schema}.letvblock] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvblock/*'        INTO TABLE tv_report.letvblock PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvblock/*'          INTO TABLE tv_report.letvblock PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvblock/*'          INTO TABLE tv_report.letvblock PARTITION (area='us', dt='${y_m_d}'); "
    

    echo "=====$(date) [${schema}.letvchswitch] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvchswitch/*'       INTO TABLE tv_report.letvchswitch PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvchswitch/*'         INTO TABLE tv_report.letvchswitch PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvchswitch/*'         INTO TABLE tv_report.letvchswitch PARTITION (area='us', dt='${y_m_d}'); " 
    

    echo "=====$(date) [${schema}.letvend] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvend/*'          INTO TABLE tv_report.letvend PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvend/*'            INTO TABLE tv_report.letvend PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvend/*'            INTO TABLE tv_report.letvend PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.letvenv] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvenv/*'          INTO TABLE tv_report.letvenv PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvenv/*'            INTO TABLE tv_report.letvenv PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvenv/*'            INTO TABLE tv_report.letvenv PARTITION (area='us', dt='${y_m_d}'); " 
    

    echo "=====$(date) [${schema}.letvinit] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvinit/*'         INTO TABLE tv_report.letvinit PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvinit/*'           INTO TABLE tv_report.letvinit PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvinit/*'           INTO TABLE tv_report.letvinit PARTITION (area='us', dt='${y_m_d}'); " 
    

    echo "=====$(date) [${schema}.letvplay] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvplay/*'         INTO TABLE tv_report.letvplay PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvplay/*'           INTO TABLE tv_report.letvplay PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvplay/*'           INTO TABLE tv_report.letvplay PARTITION (area='us', dt='${y_m_d}'); " 
    

    echo "=====$(date) [${schema}.letvplistshow] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvplistshow/*'      INTO TABLE tv_report.letvplistshow PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvplistshow/*'        INTO TABLE tv_report.letvplistshow PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvplistshow/*'        INTO TABLE tv_report.letvplistshow PARTITION (area='us', dt='${y_m_d}'); "
    

    echo "=====$(date) [${schema}.letvtime] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvtime/*'         INTO TABLE tv_report.letvtime PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvtime/*'           INTO TABLE tv_report.letvtime PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvtime/*'           INTO TABLE tv_report.letvtime PARTITION (area='us', dt='${y_m_d}'); " 
    
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/mobileappboot/*'      INTO TABLE tv_report.mobileappboot PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/mobileappboot/*'        INTO TABLE tv_report.mobileappboot PARTITION (area='us', dt='${y_m_d}'); " 
    
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/mobileappinstall/*'     INTO TABLE tv_report.mobileappinstall PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/mobileappinstall/*'       INTO TABLE tv_report.mobileappinstall PARTITION (area='us', dt='${y_m_d}'); " 
    

    echo "=====$(date) [${schema}.playblock] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playblock/*'        INTO TABLE tv_report.playblock PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playblock/*'          INTO TABLE tv_report.playblock PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playblock/*'          INTO TABLE tv_report.playblock PARTITION (area='us', dt='${y_m_d}'); "
    

    echo "=====$(date) [${schema}.playend] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playend/*'          INTO TABLE tv_report.playend PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playend/*'            INTO TABLE tv_report.playend PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playend/*'            INTO TABLE tv_report.playend PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.playerror] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playerror/*'        INTO TABLE tv_report.playerror PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playerror/*'          INTO TABLE tv_report.playerror PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playerror/*'          INTO TABLE tv_report.playerror PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.playinit] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playinit/*'         INTO TABLE tv_report.playinit PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playinit/*'           INTO TABLE tv_report.playinit PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playinit/*'           INTO TABLE tv_report.playinit PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.playseek] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playseek/*'         INTO TABLE tv_report.playseek PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playseek/*'           INTO TABLE tv_report.playseek PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playseek/*'           INTO TABLE tv_report.playseek PARTITION (area='us', dt='${y_m_d}'); "
    
    echo "=====$(date) [${schema}.tvaction] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playstart/*'        INTO TABLE tv_report.playstart PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playstart/*'          INTO TABLE tv_report.playstart PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playstart/*'          INTO TABLE tv_report.playstart PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.playtime] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playtime/*'         INTO TABLE tv_report.playtime PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playtime/*'           INTO TABLE tv_report.playtime PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playtime/*'           INTO TABLE tv_report.playtime PARTITION (area='us', dt='${y_m_d}'); "
    
    echo "=====$(date) [${schema}.shutdown] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/shutdown/*'         INTO TABLE tv_report.shutdown PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/shutdown/*'           INTO TABLE tv_report.shutdown PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/shutdown/*'           INTO TABLE tv_report.shutdown PARTITION (area='us', dt='${y_m_d}'); "
    
    echo "=====$(date) [${schema}.surf] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/surf/*'           INTO TABLE tv_report.surf PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/surf/*'             INTO TABLE tv_report.surf PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/surf/*'             INTO TABLE tv_report.surf PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.tvplusend] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/tvplusend/*'        INTO TABLE tv_report.tvplusend PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvplusend/*'          INTO TABLE tv_report.tvplusend PARTITION (area='us', dt='${y_m_d}'); " 
    
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/tvplusinit/*'         INTO TABLE tv_report.tvplusinit PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvplusinit/*'           INTO TABLE tv_report.tvplusinit PARTITION (area='us', dt='${y_m_d}'); " 
    
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/tvplusplay/*'         INTO TABLE tv_report.tvplusplay PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvplusplay/*'           INTO TABLE tv_report.tvplusplay PARTITION (area='us', dt='${y_m_d}'); " 
    
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/tvplustime/*'         INTO TABLE tv_report.tvplustime PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvplustime/*'           INTO TABLE tv_report.tvplustime PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.tvremoterbtn] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/201512/20151211/tvremoterbtn/*'       INTO TABLE tv_report.tvremoterbtn PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/tvremoterbtn/*'         INTO TABLE tv_report.tvremoterbtn PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvremoterbtn/*'         INTO TABLE tv_report.tvremoterbtn PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.updownloadfinish] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/updownloadfinish/*'     INTO TABLE tv_report.updownloadfinish PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/updownloadfinish/*'       INTO TABLE tv_report.updownloadfinish PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/updownloadfinish/*'       INTO TABLE tv_report.updownloadfinish PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.updownloadstartup] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/updownloadstartup/*'    INTO TABLE tv_report.updownloadstartup PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/updownloadstartup/*'      INTO TABLE tv_report.updownloadstartup PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/updownloadstartup/*'      INTO TABLE tv_report.updownloadstartup PARTITION (area='us', dt='${y_m_d}'); " 
    
    echo "=====$(date) [${schema}.upfinish] partition ${y_m_d} data start loading  ..."
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/upfinish/*'         INTO TABLE tv_report.upfinish PARTITION (area='land', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/upfinish/*'           INTO TABLE tv_report.upfinish PARTITION (area='hk', dt='${y_m_d}'); "  
    hive -e "LOAD DATA INPATH '${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/upfinish/*'           INTO TABLE tv_report.upfinish PARTITION (area='us', dt='${y_m_d}'); "  
  done 
}


# start load
echo "====$(date) Range is [${start}, ${end}] ===="
loadMultiPar 

loadPartition 


