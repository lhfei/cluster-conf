#!/bin/bash

# read a file and append it to an array line by line.
getArray() {
    local i=0
    array=() # Clear array
    while IFS= read -r line # Read a line
    do
        array+=( "$line" ) # Append line to the array
    done < "$1"
}


getArray "/letv/cloudland/app_jobs/detach-partition/schemas-list.txt"

echo ${array[@]}
