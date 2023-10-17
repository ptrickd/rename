#! /bin/bash

#gets the arguments
while getopts p:f:r:t: flag

# assign the arguments 
do
    case "${flag}" in
        p) pathname=${OPTARG};;
        f) find=${OPTARG};;
        r) replace=${OPTARG};;
        t) typ=${OPTARG};;
    esac
done

# if arguments missing, stop ths script
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

# store all the filename found in an array
array=( $( find $pathname -maxdepth 1 -name "*${typ}" | grep "$find") )


#print the length of the array
echo "${#array[@]} files found"

# loop through the array replacing part of the text
for file in "${array[@]}"; do
   mv -- "$file" "${file//${find}/${replace}}"  
done

