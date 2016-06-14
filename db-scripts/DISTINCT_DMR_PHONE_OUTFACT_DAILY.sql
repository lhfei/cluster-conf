DROP TABLE IF EXISTS `DMR_PHONE_OUTFACT_DAILY_BK`;  

CREATE TABLE `DMR_PHONE_OUTFACT_DAILY_BK` AS
SELECT
  `last_update`,
  `cdt`,
  `model`,
  `storage`,
  `zhishi`,
  `color`,
  `version`,
  `out_day`,
  `out_all`,
  `dt`
FROM
  `phone_dashboard`.`DMR_PHONE_OUTFACT_DAILY`
WHERE `dt` IN (
    '20160122',
    '20160123',
    '20160124'
  )
GROUP BY `last_update`,
  `cdt`,
  `model`,
  `storage`,
  `zhishi`,
  `color`,
  `version`,
  `out_day`,
  `out_all`,
  `dt`;

  
-- Delete   
DELETE
FROM
  `phone_dashboard`.`DMR_PHONE_OUTFACT_DAILY`
WHERE `dt` IN (
    '20160122',
    '20160123',
    '20160124'
  ) ;
  
-- Insert
INSERT INTO `phone_dashboard`.`DMR_PHONE_OUTFACT_DAILY`
SELECT
  *
FROM
  `DMR_PHONE_OUTFACT_DAILY_BK`
WHERE `dt` IN (
    '20160122',
    '20160123',
    '20160124'
  ) ;
  