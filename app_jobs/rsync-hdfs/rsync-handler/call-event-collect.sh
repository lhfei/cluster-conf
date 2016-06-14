#!/bin/bash

###############################################################
# Call event-collect job on 10.148.10.13 host:
#
# @author Hefei Li
# @since Dec 23, 2015
###############################################################

ssh cloudland@basic.internal.hadoop.10-148-10-13 event-collect "oozie job -run -config /letv/cloudland/app_jobs/event-collect/job.properties"
