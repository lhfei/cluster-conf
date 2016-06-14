#!/bin/bash 

yearMonth="yearMonth=$(date +%Y%m)"
yesterday="partition=$(date +%Y%m%d -d -1day)"

echo ${yearMonth}
echo ${yesterday}

sed -i "s/yearMonth=.*/$yearMonth/g"  ./job.properties
sed -i "s/partition=.*/$yesterday/g" ./job.properties


