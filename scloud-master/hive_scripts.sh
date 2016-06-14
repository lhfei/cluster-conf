#!/bin/bash
# hive_scripts.sh

# this will print the usage statements and exit
usage() {
	case $1 in
		"")
			echo ""
			echo "Usage: hive_scripts.sh command [options]"
			echo "      for info on each command: --> hive_scripts.sh command -h|--help"
			echo "Commands:"
			echo "      hive_scripts.sh pull_with_hql_script [options]"
			echo "      hive_scripts.sh pull_with_one_liner [options]"
			echo ""
			echo ""
			;;
		pull_with_hql_script)
			echo ""
			echo "Usage: hive_scripts.sh pull_with_hql_script [-h|--help]"
			echo ""
			echo "  This is a quick example of using a hql script with a bash script to pull a value:"
			echo ""
			echo "Params:"
			echo "      -c|--comparison comparison_statement: column=value"
			echo "      -d|--database database_name"
			echo "      -h|--help: print this help info and exit"
			echo "      -r|--requested_column: column to get averaged value from"
			echo "      -t|--table table_name"
			echo "Examples:"
			echo ""
			echo "		./hive_scripts.sh pull_with_hql_script -c a_column_name=a_value -d a_database_name -t a_table_name -r a_column_name"
			echo ""
			;;
		pull_with_one_liner)
			echo ""
			echo "Usage: hive_scripts.sh pull_with_one_liner [-h|--help]"
			echo ""
			echo "  This is a quick example of passing query strings directly to a hive shell with a bash script to pull a value:"
			echo ""
			echo "Params:"
			echo "      -b|--begin_date yyyymmdd"
			echo "      -c|--comparison comparison_statement: column=value"
			echo "      -d|--database database_name"
			echo "      -e|--end_date yyyymmdd"
			echo "      -h|--help: print this help info and exit"
			echo "      -r|--requested_column: column to get averaged value from"
			echo "      -t|--table table_name"
			echo "Examples:"
			echo ""
			echo "		./hive_scripts.sh pull_with_one_liner -c a_column_name=a_value -d a_database_name -t a_table_name -r a_column_name -b 20120122 -e 20130122"
			echo ""
			;;		
	esac
	exit
}

# this will process command line arguments enough to get you to a specific function
args() {
	echo "processing command request"
    case $1 in
        pull_with_hql_script)
            shift
            pull_with_hql_script $@
            ;;
        pull_with_one_liner)
            shift
            pull_with_one_liner $@
            ;;

        *)
            echo >&2 "Invalid comand: $1"
            usage
        	;;
    esac
}


pull_with_hql_script() {
	# init params
	requested_column=""
	database=""
	table=""
	comparison=""
	hive_script="hive_script.hql"
	select=""
	begin_date=""
	end_date=""

	# process args for this block
	while test $# -gt 0
	do
    case $1 in
            -c|--comparison)
            	shift
            	comparison=$1
            	;;
            -d|--database)
            	shift
            	database=$1
            	;;
        	-h|--help)
            	usage pull_with_hql_script
            	;;
            -r|--requested_column)
            	shift
            	requested_column=$1
            	;;
            -t|--table)
            	shift
            	table=$1
            	;;
        	*)
            	echo >&2 "Invalid argument: $1"
            	usage "pull_with_hql_script"
        	    ;;
    	esac
    	shift
	done
	
	# determine if any option is missing	
	if [ x"$requested_column" == "x" ]; then
		echo "missing requested column: -r|--requested_column column_name_to_count"
		usage "pull_with_hql_script"
	fi
	
	if [ x"$database" == "x" ]; then
		echo "missing database name: -d|--database database_name"
		usage "pull_with_hql_script"
	fi
	
	if [ x"$table" == "x" ]; then
		echo "missing table name: -t|--table table_name"
		usage "pull_with_hql_script"
	fi
	
	if [ x"$comparison" == "x" ]; then
		echo "missing comparison clause WHERE : -c|--comparison comparison"
		usage "pull_with_hql_script"
	fi

	# set select statement
	select="AVG($requested_column)"
	
	# echo the command used to run the hive hql script just because
	echo "hive -S -hiveconf MY_SELECT=$select -hiveconf MY_COMPARISON=$comparison -hiveconf MY_DATABASE=$database -hiveconf MY_TABLE=$table -f $hive_script" 
	my_value=`hive -S -hiveconf MY_SELECT=$select -hiveconf MY_COMPARISON=$comparison -hiveconf MY_DATABASE=$database -hiveconf MY_TABLE=$table -f $hive_script`
	echo "returned value = $my_value"
	exit
	
}

pull_with_one_liner() {
	# init params
	requested_column=""
	distinct=""
	database=""
	table=""
	comparison=""
	hive_script="hive_script.hql"
	select=""
	begin_date=""
	end_date=""
	load=true

	# process args for this block
	while test $# -gt 0
	do
    case $1 in
    		-b|--begin_date)
            	shift
            	begin_date=$1
            	;;
            -c|--comparison)
            	shift
            	comparison=$1
            	;;
            -d|--database)
            	shift
            	database=$1
            	;;
            -e|--end_date)
            	shift
            	end_date=$1
            	;;
        	-h|--help)
            	usage pull_with_one_liner
            	;;
            -r|--requested_column)
            	shift
            	requested_column=$1
            	;;
            -t|--table)
            	shift
            	table=$1
            	;;
        	*)
            	echo >&2 "Invalid argument: $1"
            	usage "pull_with_one_liner"
        	    ;;
    	esac
    	shift
	done
	
	# determine if any option is missing	
	if [ x"$requested_column" == "x" ]; then
		echo "missing requested column: -r|--requested_column column_name_to_count"
		usage "pull_with_one_liner"
	fi
	
	if [ x"$database" == "x" ]; then
		echo "missing database name: -d|--database database_name"
		usage "pull_with_one_liner"
	fi
	
	if [ x"$table" == "x" ]; then
		echo "missing table name: -t|--table table_name"
		usage "pull_with_one_liner"
	fi
	
	if [ x"$comparison" == "x" ]; then
		echo "missing comparison clause WHERE <comparison>: -c|--comparison comparison"
		usage "pull_with_one_liner"
	fi
	
	if [ x"$begin_date" == "x" ]; then
		echo "missing start date <2012-01-28>: -b|--begin_date yyyy-mm-dd"
		usage "pull_with_one_liner"
	fi
	
	if [ x"$end_date" == "x" ]; then
		echo "missing ending date <2014-02-17>: -b|--begin_date yyyy-mm-dd"
		usage "pull_with_one_liner"
	fi
	
	# get start date and end date in correct format
	begin_date=`date --date="$begin_date" '+%Y%m%d'`
	end_date=`date --date="$end_date" '+%Y%m%d'`

	# set select statement in affect overriding any set by argument
	select="avg($requested_column)"
	
	# before we query for information we may want to make sure we have all the partitions loaded?
	# in this case the table was external so there may be partitions that were not loaded 
	# when the table was created
	# Here is an example of executing two commands with hive in a bash shell
	partitions=$(hive -e "USE $database; SHOW PARTITIONS $table")
	
	# loop through all the partitions and load if not present 
	# in most case this is not needed.
	my_date=$begin_date
	while test  $my_date -le $end_date
	do
		# Load partitions
		if [ "$load" = true ]; then
			# check if partition is present
			add_partition=true
			for partition in $partitions
			do
				my_timestamp=`date -d "$my_date" "+%s"`
				if [ "$partition" == "collectionday=$my_timestamp" ]; then
					add_partition=false;
				fi
			done
			if [ "$add_partition" = true ]; then
					# Here is an example of executing two statements in the hive shell
				echo "hive -e \"USE $database; alter table $table add if not exists partition(collectionday=$my_timestamp);\""
				hive -e "USE $database; alter table $table add if not exists partition(collectionday=$my_timestamp);"
			fi
		fi
		my_date=`date --date="$my_date + 1 day" '+%Y%m%d'`
	# end of while loop
	done
	
	# lets build the query we will execute in the hive shell
	my_query="set mapred.reduce.tasks=30;"
	my_query="$my_query SELECT $select"
	my_query="$my_query FROM ("
	my_query="$my_query SELECT DISTINCT collectiontime, id, collectionday, speed"
	my_query="$my_query FROM $database.$table"
	my_query="$my_query WHERE $comparison"
	my_query="$my_query ) t"
	my_query="$my_query GROUP by id, collectionday;"

	# echo the query passed to the hive shell just because
	echo "hive -S -e \"$my_query\"" 
	my_value=$(hive -e "$my_query")
	echo "returned value = $my_value"
	exit
	
}

# -------------------------------------------------------------------------------------
# Beginning of script execution
#

args $@