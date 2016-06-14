#!/bin/bash

job_dir=/letv/cloudland/app_jobs/rsync-hdfs

# locad data into dwd schema
echo "----------------------------- loading data into dwd .............. ----------------------------------"
${job_dir}/dwd-init/dwd_init_data.sh


# load data into dmr
echo "----------------------------- loading data into dmr .............. ----------------------------------"
${job_dir}/dmr-init/dmr_init_data.sh
${job_dir}/dmr-init/dmr_export_data.sh


# load data into source
echo "----------------------------- loading data into source .............. ----------------------------------"
${job_dir}/source-init/source_init_data.sh

# load data into data_dim
echo "----------------------------- loading data into data_dim .............. ----------------------------------"
${job_dir}/data_dim-init/data_dim_init_data.sh

# load data into tv_report 
echo "----------------------------- loading data into tv_report .............. ----------------------------------"
${job_dir}/tv_report-init/tv_report_init_data.sh

for db in {'dwd', 'dmr', 'tv_report'}
do
  dir='${db}-init'
  script='${db}_init_data.sh'
  echo "----------------------------- loading data into [$db] .............. ----------------------------------"
  #${job_dir}/$dir/$script
done
