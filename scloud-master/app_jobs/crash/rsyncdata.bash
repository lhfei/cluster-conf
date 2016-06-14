#!/bin/bash
LOGIPS=(106.38.226.71)
FLAG=$1
rm -rf /tmp/crash-data.log
USER=scloud
HIVEDB=crash
LOGTB=t_crash_info
GROUP_LOG_TABLE=t_crash_info_group
#REMOTE_DIR=/scloud_dev/zengfanxin/crash_data/
#DESTDIR=/home/scloud/crash-script/crash-data
DESTDIR=/letv/cloudland/app_jobs/crash/data_bak/
REMOTE_DIR=data/
DATE=`date -d  '-1 day' +%Y-%m-%d`
echo "run to crash-data and load data....begin at $DATE, FLAG = $FLAG" >> /tmp/crash-data.log

#export HOUR_ARRAY=()
#HOUR_ARRAY=(00 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23)
#echo "crash-data current hour-array = "${HOUR_ARRAY[@]}
# parts=`hive -e "show partitions $HIVEDB.$GROUP_LOG_TABLE"`
# echo 'HIVE GROUP PARTITIONS = '$parts

function load_data() {
  LOGFILE=$REMOTE_DIR'crash-'${DATE}.txt
  echo "load_data() remote data-file : "$LOGFILE
  for logip in ${LOGIPS[@]}
       do 
          echo "load data-dir : "$logip
          # rm -rf $DESTDIR/$logip
          mkdir -p $DESTDIR/$logip
          # scp -r $USER@$logip:$LOGFILE $DESTDIR/$logip/ 
          rsync -arzP $logip::$LOGFILE $DESTDIR/$logip/
          if [ $? -eq 0 ]; then
            echo 'rsync success !'
          else 
            echo 'rsync error.'
          fi 
   done
}

function load_data_hour_file() {
 for i in "${HOUR_ARRAY[@]}"
 do 
    LOGFILE=$REMOTE_DIR'crash-'${DATE}-$i.txt
    echo "load_data_hour_file()  remote data-file : "$LOGFILE
    #echo "get $i hours data try" >> /tmp/crash-data.log
    #echo "$parts" >> /tmp/crash-data.log
    #echo "to find : day=$DATEDAY/hour=$i" >> /tmp/crash-data.log
    #rs=`echo $parts | grep "day=$DATEDAY/hour=$i"` echo "result : $rs" >> /tmp/crash-data.log
    #if [ -n "$rs" ]; then
    #  continue
    #fi
    #echo "$i hours data not find,do it" >> /tmp/crash-data.log
    #exit 0
    for logip in ${LOGIPS[@]}
       do 
          echo "load data-dir : "$logip
          # rm -rf $DESTDIR/$logip
          mkdir -p $DESTDIR/$logip
          # scp -r $USER@$logip:$LOGFILE $DESTDIR/$logip/
          rsync -arzP $logip::$LOGFILE $DESTDIR/$logip/
          if [ $? -eq 0 ]; then
            echo 'rsync success !'
          else 
            echo 'rsync error.'
          fi 
    done
  done
}

load_data
# echo "run to fetch data and load data....over :`date`" >> /tmp/crash-data.log
