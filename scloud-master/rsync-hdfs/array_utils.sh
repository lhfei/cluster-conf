#!/bin/bash

Unix[0]='Debian'
Unix[1]='Red hat'
Unix[2]='Ubuntu'
Unix[3]='Suse'

# length of the element located at index 3 i.e Suse
echo ${#Unix[3]}


#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${Unix[@]:3:2}

#-----------------------------------------------------
# Extraction with offset and length, 
# 	for a particular element of an array
#-----------------------------------------------------
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${Unix[2]:0:4}

#-----------------------------------------------------
# Search and Replace in an array elements
#-----------------------------------------------------
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
echo ${Unix[@]/Ubuntu/SCO Unix}

#-----------------------------------------------------
# Remove an Element from an Array
#-----------------------------------------------------
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');

unset Unix[3]
echo ${Unix[3]}

# ${Unix[@]:0:$pos} will give you 3 elements starting from 0th index 
# i.e 0,1,2 and ${Unix[@]:4} will give the elements from 4th index to the last index
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
pos=3
Unix=(${Unix[@]:0:$pos} ${Unix[@]:$(($pos + 1))})
echo ${Unix[@]}


#-----------------------------------------------------
# Remove Bash Array Elements using Patterns
#-----------------------------------------------------
declare -a Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora');
declare -a patter=( ${Unix[@]/Red*/} )
echo ${patter[@]}

#-----------------------------------------------------
# Copying an Array
#-----------------------------------------------------
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
Linux=("${Unix[@]}")
echo ${Linux[@]}

#-----------------------------------------------------
# Concatenation of two Bash Arrays
#-----------------------------------------------------
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
Shell=('bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh');

UnixShell=("${Unix[@]}" "${Shell[@]}")
echo ${UnixShell[@]}
echo ${#UnixShell[@]}

#-----------------------------------------------------
# Deleting an Entire Array
#-----------------------------------------------------
Unix=('Debian' 'Red hat' 'Ubuntu' 'Suse' 'Fedora' 'UTS' 'OpenLinux');
Shell=('bash' 'csh' 'jsh' 'rsh' 'ksh' 'rc' 'tcsh');

UnixShell=("${Unix[@]}" "${Shell[@]}")
unset UnixShell
echo ${#UnixShell[@]}


#-----------------------------------------------------
# Load Content of a File into an Array
#-----------------------------------------------------
$ cat logfile
Welcome
to
thegeekstuff
Linux
Unix

$ cat loadcontent.sh
#!/bin/bash
filecontent=( `cat "logfile" `)

for t in "${filecontent[@]}"
do
echo $t
done
echo "Read file content!"



#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------



#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------

#-----------------------------------------------------
# Extraction by offset and length for an array
#-----------------------------------------------------