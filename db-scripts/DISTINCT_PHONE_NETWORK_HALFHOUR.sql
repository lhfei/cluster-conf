DROP TABLE IF EXISTS `PHONE_NETWORK_HALFHOUR_BK`;


CREATE TABLE `PHONE_NETWORK_HALFHOUR_BK` AS
SELECT
  `active_count`,
  `software_version`,
  `external_model`,
  `group_title`,
  `summary_date`
FROM
  `phone_dashboard`.`PHONE_NETWORK_HALFHOUR`
WHERE `SUMMARY_DATE` IN (
    '20160122',
    '20160123',
    '20160124'
  )
GROUP BY `active_count`,
  `software_version`,
  `external_model`,
  `group_title`,
  `summary_date`;

  
-- Delete   
DELETE
FROM
  `phone_dashboard`.`PHONE_NETWORK_HALFHOUR`
WHERE `SUMMARY_DATE` IN (
    '20160122',
    '20160123',
    '20160124'
  ) ;
  
-- Insert
INSERT INTO `phone_dashboard`.`PHONE_NETWORK_HALFHOUR`
SELECT
  *
FROM
  `PHONE_NETWORK_HALFHOUR_BK`
WHERE `SUMMARY_DATE` IN (
    '20160122',
    '20160123',
    '20160124'
  ) ;
  