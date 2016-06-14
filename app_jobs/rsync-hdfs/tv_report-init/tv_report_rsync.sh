#!/bin/bash

#schema="tv_report"
uhome="/user/cloudland/warehouse/tv/datamarts"
hname="/usr/hdp/2.3.2.0-2950/hadoop"
tables_list_path="/letv/cloudland/app_jobs/rsync-hdfs"
destination="hdfs://centos10-10.letv.cn:8020/user/cloudland/warehouse"
origin="hftp://10.149.10.99:50070/user/hive/warehouse"

# check parameters: 
if (("$#" != 3))
then
  echo "$(date) error: Schema and start, end range must be assigned. And the start must be less then the end."
  echo "Usage: ./[schema]_rsync.sh dwd 1 1"
  exit 1
fi

schema=$1
start=$2
end=$3

echo "====$(date) Range is [${start}, ${end}] ===="

for ((i=${start}; i<=${end}; i++))
do
  #current=$(date +%Y%m%d -d -${i}day)
  y_m=$(date +%Y%m -d -${i}day)			#format data: year and month.
  y_m_d=$(date +%Y%m%d -d -${i}day)		#format data: year,month and day.
  
  echo "=====$(date) current is [${y_m} == ${y_m_d}] ===="

  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/AppInstall              ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/appinstall
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/AppInstall                ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/appinstall
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/AppInstall                ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/appinstall
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/AppUninstall            ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/appuninstall
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/AppUninstall              ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/appuninstall
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/AppUninstall              ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/appuninstall
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/AppStartup              ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/appstartup
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/AppStartup                ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/appstartup
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/AppStartup                ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/appstartup
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/Bootstrap               ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/bootstrap
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/Bootstrap                 ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/bootstrap
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/Bootstrap                 ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/bootstrap
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/EndPlay                 ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/endplay
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/EndPlay                   ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/endplay
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/Heartbeat               ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/heartbeat
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/Heartbeat                 ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/heartbeat
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/Heartbeat                 ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/heartbeat
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/StartPlay               ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/startplay
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/StartPlay                 ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/startplay
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/BrowserBaiduSrch        ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserbaidusrch
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/BrowserBaiduSrch          ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserbaidusrch
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/BrowserBaiduVideoSrch   ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserbaiduvideosrch
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/BrowserBaiduVideoSrch     ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserbaiduvideosrch
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/BrowserHeartbeat        ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserheartbeat
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/BrowserHeartbeat          ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserheartbeat
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/BrowserLink             ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserlink
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/BrowserLink               ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserlink
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/BrowserNav              ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browsernav
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/BrowserNav                ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browsernav
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/BrowserPlayVideo        ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserplayvideo
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/BrowserPlayVideo          ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserplayvideo
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/BrowserStartup          ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/browserstartup
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/BrowserStartup            ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/browserstartup
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/CdnDispatch             ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/cdndispatch
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/CdnDispatch               ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/cdndispatch
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/ErrLog                    ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/errlog
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/GerAction               ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/geraction
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/GerHeartbeat            ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/gerheartbeat
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/GerStartup              ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/gerstartup
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/LetvBlock               ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvblock
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/LetvBlock                 ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvblock
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/LetvBlock                 ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvblock
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/LetvChSwitch            ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvchswitch
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/LetvChSwitch              ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvchswitch
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/LetvChSwitch              ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvchswitch
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/LetvEnd                 ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvend
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/LetvEnd                   ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvend
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/LetvEnd                   ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvend
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/LetvEnv                 ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvenv
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/LetvEnv                   ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvenv
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/LetvEnv                   ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvenv
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/LetvInit                ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvinit
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/LetvInit                  ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvinit
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/LetvInit                  ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvinit
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/LetvPlay                ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvplay
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/LetvPlay                  ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvplay
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/LetvPlay                  ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvplay
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/LetvPlistShow           ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvplistshow
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/LetvPlistShow             ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvplistshow
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/LetvPlistShow             ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvplistshow
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/LetvTime                ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/letvtime
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/LetvTime                  ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/letvtime
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/LetvTime                  ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/letvtime
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/MobileAppBoot           ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/mobileappboot
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/MobileAppBoot             ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/mobileappboot
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/MobileAppInstall        ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/mobileappinstall
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/MobileAppInstall          ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/mobileappinstall
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/va_rc/${y_m}/20160117                        ${uhome}/${schema}.db/data/hk/va_rc/${y_m}/20160117
  #${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/env_rc/${y_m}/20160117                       ${uhome}/${schema}.db/data/hk/env_rc/${y_m}/20160117
  #${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/er_rc/${y_m}/20160117                        ${uhome}/${schema}.db/data/hk/er_rc/${y_m}/20160117
  #${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/lg_rc/${y_m}/20160117                        ${uhome}/${schema}.db/data/hk/lg_rc/${y_m}/20160117
  #${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/op_rc/${y_m}/20160117                        ${uhome}/${schema}.db/data/hk/op_rc/${y_m}/20160117
  #${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/pl_rc/${y_m}/20160117                        ${uhome}/${schema}.db/data/hk/pl_rc/${y_m}/20160117
  #${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/pgv_rc/${y_m}/20160117                       ${uhome}/${schema}.db/data/hk/pgv_rc/${y_m}/20160117
  #${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/qy_rc/${y_m}/20160117                        ${uhome}/${schema}.db/data/hk/qy_rc/${y_m}/20160117
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/PlayBlock               ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playblock
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/PlayBlock                 ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playblock
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/PlayBlock                 ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playblock
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/PlayEnd                 ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playend
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/PlayEnd                   ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playend
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/PlayEnd                   ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playend
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/PlayError               ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playerror
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/PlayError                 ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playerror
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/PlayError                 ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playerror
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/PlayInit                ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playinit
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/PlayInit                  ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playinit
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/PlayInit                  ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playinit
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/PlaySeek                ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playseek
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/PlaySeek                  ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playseek
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/PlaySeek                  ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playseek
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/PlayStart               ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playstart
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/PlayStart                 ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playstart
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/PlayStart                 ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playstart
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/PlayTime                ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/playtime
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/PlayTime                  ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/playtime
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/PlayTime                  ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/playtime
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/SdkAppCrash             ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/sdkappcrash
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/SdkAppDur               ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/sdkappdur
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/SdkAppPageJump          ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/sdkapppagejump
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/SdkAppStartup           ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/sdkappstartup
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/SdkCustomEvent          ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/sdkcustomevent
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/Shutdown                ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/shutdown
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/Shutdown                  ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/shutdown
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/Shutdown                  ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/shutdown
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/Surf                    ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/surf
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/Surf                      ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/surf
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/Surf                      ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/surf
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/TvAction                ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/tvaction
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/TvAction                  ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/tvaction
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/TvAction                  ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvaction
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/TvplusEnd               ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/tvplusend
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/TvplusEnd                 ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvplusend
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/TvplusInit              ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/tvplusinit
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/TvplusInit                ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvplusinit
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/TvplusPlay              ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/tvplusplay
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/TvplusPlay                ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvplusplay
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/TvplusTime              ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/tvplustime
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/TvplusTime                ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvplustime
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/201512/20151211/TvRemoterBtn            ${uhome}/${schema}.db/data/land/rc/201512/20151211/tvremoterbtn
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/TvRemoterBtn              ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/tvremoterbtn
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/TvRemoterBtn              ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/tvremoterbtn
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/UpDownloadFinish        ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/updownloadfinish
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/UpDownloadFinish          ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/updownloadfinish
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/UpDownloadFinish          ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/updownloadfinish
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/UpDownloadStartup       ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/updownloadstartup
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/UpDownloadStartup         ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/updownloadstartup
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/UpDownloadStartup         ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/updownloadstartup
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/UpFinish                ${uhome}/${schema}.db/data/land/rc/${y_m}/${y_m_d}/upfinish
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/UpFinish                  ${uhome}/${schema}.db/data/hk/rc/${y_m}/${y_m_d}/upfinish
  ${hname}/bin/hadoop distcp -update -skipcrccheck ${origin}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/UpFinish                  ${uhome}/${schema}.db/data/us/rc/${y_m}/${y_m_d}/upfinish

done
