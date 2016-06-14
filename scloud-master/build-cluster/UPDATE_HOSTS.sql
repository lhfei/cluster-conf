-- update `hosts` h set h.`host_name` =  replace(h.`host_name`, 'centos', '')
-- UPDATE `hosts` h SET h.`host_name` =  REPLACE(h.`host_name`, 'centos', '')

SELECT CONCAT('basic.internal.hadoop.', REPLACE(h.`ipv6`, '.', '-'), '.scloud.letv.com') FROM `hosts` h;

UPDATE `hosts` h SET h.`host_name` = CONCAT('basic.internal.hadoop.', REPLACE(h.`ipv6`, '.', '-'), '.scloud.letv.com'), h.`public_host_name` = h.`host_name`