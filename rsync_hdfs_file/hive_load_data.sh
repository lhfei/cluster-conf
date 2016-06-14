#!/bin/bash


# locad data into dwd schema
echo "----------------------------- loading data into dwd .............. ----------------------------------"
/letv/cloudland/app_jobs/rsync_hdfs_file/dwd-init/dwd_init_data.sh


# load data into dmr
echo "----------------------------- loading data into dmr .............. ----------------------------------"
/letv/cloudland/app_jobs/rsync_hdfs_file/dmr-init/dmr_init_data.sh
/letv/cloudland/app_jobs/rsync_hdfs_file/dmr-init/dmr_export_data.sh


# load data into tv_report 
echo "----------------------------- loading data into dmr .............. ----------------------------------"
#/letv/cloudland/app_jobs/rsync_hdfs_file/tv_report-init/tv_report_init_data.sh

# load data into source 
echo "----------------------------- loading data into source .............. ----------------------------------"
/letv/cloudland/app_jobs/rsync_hdfs_file/source-init/source_init_data.sh

# load data into data_dim 
echo "----------------------------- loading data into data_dim .............. ----------------------------------"
/letv/cloudland/app_jobs/rsync_hdfs_file/data_dim-init/data_dim_init_data.sh