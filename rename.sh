#! /bin/bash

while getopts p:f:r:t: flag



do
    case "${flag}" in
        p) pathname=${OPTARG};;
        f) find=${OPTARG};;
        r) replace=${OPTARG};;
        t) typ=${OPTARG};;
    esac
done

if [ -z "$find" ]; then
   echo 'Need a argument find'
   exit 1
elif [ -z "$pathname" ]; then
   echo 'Need a argument pathname'
   exit 1
elif [ -z "$replace" ]; then
   echo 'Need a argument replace'
   exit 1
elif [ -z "$typ" ]; then
   echo 'Need a argument type'
   exit 1
fi


array=( $( find $pathname -maxdepth 1 -name "*${typ}" | grep "$find") )


#print the length of the array
echo "${#array[@]}"

for i in "${array[@]}"; do
	echo $i 
done