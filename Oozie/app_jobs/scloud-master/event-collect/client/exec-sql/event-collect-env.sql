--insert into table scloud_phone.device_day_metric (key, env_phone cast('-1' as  as BIGINT),env_phone2,env_ip)
--explain
insert into table scloud_phone.device_day_metric
--( key 
--  env_phone cast('-1' as  as BIGINT),
--  env_phone2,
--  env_ip
--)
select named_struct('month', substr(dt, 1, 6), 'day_imei', concat_ws('', dt, imei)) as key,
       null,
       null,
       ip,
       ip_country_code,
       ip_country_name,
       ip_region_code,
       ip_region_name,
       ip_province_code,
       ip_province_name,
       ip_city_code,
       ip_city_name,
       ip_isp,
       case when gps is null or length(gps) = 1 then
         ''
       else
         gps
       end gps,
       phone_no,
       phone_no_2,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       null,
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint)),
       map('',  cast('-1' as  bigint))
  from dwd.dwd_flow_sdk_phone_env_day
 where dt = '20151124'
   and imei is not null 
   and length(imei) = 15
   --and imei = '866479021496608'
   --and dwd_flow_sdk_phone_env_day.imei = ' cast('-1' as  as BIGINT)33524239284400'
   and (phone_no is not null or phone_no_2 is not null)
   and (length(phone_no) >=  11 or length(phone_no_2) >=  11);
