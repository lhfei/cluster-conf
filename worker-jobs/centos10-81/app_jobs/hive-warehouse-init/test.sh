getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}


getArray './data_sum-tables-list.txt'

for e in "${array[@]}"
do
    echo "$e"
done
