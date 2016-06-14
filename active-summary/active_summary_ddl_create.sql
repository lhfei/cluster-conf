CREATE TABLE phone_active_ctime_obs (
  cimei string, 
  slived_time string, 
  software_version string, 
  external_model string, 
  group_title string, 
  summary_date string
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';

CREATE TABLE phone_network_halfhour_obs(
  active_count string, 
  software_version string, 
  external_model string, 
  group_title string, 
  summary_date string
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';



CREATE TABLE `dmr_phone_outfact_daily_obs`(
  `last_update` string, 
  `cdt` string, 
  `model` string, 
  `storage` string, 
  `zhishi` string, 
  `color` string, 
  `version` string, 
  `out_day` string, 
  `out_all` string,
  `dt` string
) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t';