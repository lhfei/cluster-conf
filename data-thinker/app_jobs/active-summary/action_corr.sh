
function  activation_corr()
{
	YESTERDAY1=`date -d '-1 days' +%Y%m%d`
  	YESTERDAY2=`date -d '-1 days' +%Y%m%d`
#	insert_sql="insert into table scloud_log.phone_activation_time PARTITION(summary_date=\"${YESTERDAY1}\")"
#	select_sql=" select t.imei,sum(t.lived_time),count(t.activation),\"${YESTERDAY1}\" From( SELECT phonesource.activation_halfhour_time AS activation, phonesource.imei,beat.lived_time,phonesource.dt FROM data_sum.sum_phone_source_day AS phonesource LEFT join data_sum.sum_sdk_phone_beat_day AS beat ON phonesource.imei=beat.imei WHERE phonesource.dt=\"${YESTERDAY2}\" and beat.dt=\"${YESTERDAY2}\" and phonesource.activation_halfhour_time IS NOT NULL ) as t GROUP BY t.imei ,t.dt"
	select_sql=" SELECT t.imei,round(sum(t.lived_time)/60000,4),count(t.cimei),t.software_version,t.external_model,t.group_title From
  (SELECT phonesource.activation_halfhour_time AS activation, phonesource.imei,
  phonesource.software_version,
  phonesource.external_model,
  phonesource.group_title,
  beat.lived_time,beat.imei as cimei,phonesource.dt
   FROM data_sum.sum_phone_source_day AS phonesource
   LEFT JOIN data_sum.sum_sdk_phone_beat_day AS beat ON phonesource.imei=beat.imei
   WHERE phonesource.dt=\"${YESTERDAY2}\"
     AND beat.dt=\"${YESTERDAY2}\"
     AND phonesource.activation_halfhour_time IS NOT NULL) AS t
GROUP BY t.imei ,t.software_version,t.external_model,t.group_title,
         t.dt"
	insert_select_sql=$insert_sql$select_sql
	tmp_group_sql='/tmp/tmp_activation_corr.sql'	
	hive -e "$insert_select_sql;" 
}
#activation_corr

#  开机半小时
function network_imeicount()
{
	YESTERDAY1=`date -d '-1 days' +%Y%m%d`
        YESTERDAY2=`date -d '-1 days' +%Y%m%d`
	insert_sql="insert into table scloud_phone.network_halfhour"
	select_sql=" select count(distinct case when from_unixtime(cast(substr(activation_halfhour_time,0,10) as bigint),'yyyyMMdd')<=\"${YESTERDAY2}\" then imei end) half_net_all,software_version,external_model,group_title,\"${YESTERDAY1}\"
		from dwd.dwd_res_zhixin_phone_source_day
		where dt=\"${YESTERDAY2}\"
		group by dt,software_version,external_model,group_title"
 	insert_select_sql=$insert_sql$select_sql
        tmp_group_sql='/tmp/tmp_network.sql'
        hive -e "$insert_select_sql;"	
}

#### 手机活跃数
function  active_ctime()
{
	YESTERDAY1=`date -d '-1 days' +%Y%m%d`
        YESTERDAY2=`date -d '-1 days' +%Y%m%d`
	insert_sql="insert into table scloud_phone.phone_active_ctime"
	select_sql=" SELECT 
    COUNT(distinct sub.imei),
    SUM(sub.lived_time),
    sub.software_version,
    sub.external_model,
    sub.group_title,
	\"${YESTERDAY1}\"
FROM
  (SELECT 
    t.imei,
    t.lived_time,
    source.software_version,
    source.external_model,
    source.group_title 
  FROM
    (SELECT 
      beat.imei,
      MAX(beat.lived_time) as lived_time 
    FROM
      dwd.dwd_flow_sdk_phone_beat_day AS beat  where beat.dt=\"${YESTERDAY2}\"
    GROUP BY beat.imei) t 
    LEFT JOIN dwd.dwd_res_zhixin_phone_source_day AS source 
      ON t.imei = source.imei)sub 
GROUP BY sub.software_version,
  sub.external_model,
  sub.group_title"
	     insert_select_sql=$insert_sql$select_sql
        tmp_group_sql='/tmp/tmp_ctivetime.sql'

        hive -e "$insert_select_sql;"
}
network_imeicount
active_ctime


# export data
/letv/cloudland/app_jobs/active-summary/active_export.sh
