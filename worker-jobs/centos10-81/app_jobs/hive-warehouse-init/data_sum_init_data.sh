getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}


getArray './data_sum-tables-list.txt'

for tname in "${array[@]}"
do
    echo "===== [$tname] start loading ..."

    for d in {5..5}
    do
    	current=$(date +%Y%m%d -d -${d}day)

    	echo "=====++++++++ [$tname] partition ${current} data start loading  ..."
    	hql="LOAD DATA INPATH 'hdfs://centos10-80.letv.cn:8020/user/cloudland/phone/v_newer/data_sum.db/${tname}/dt=${current}/*' INTO TABLE data_sum.${tname} PARTITION (dt=${current});"
    	echo $hql
        hive -e "$hql"
    	echo "=====++++++++ [$tname] partition ${current} data loaded  ..."
    done

done
