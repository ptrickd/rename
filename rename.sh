#! /bin/bash

while getopts p:f:r: flag



do
    case "${flag}" in
        p) pathname=${OPTARG};;
        f) find=${OPTARG};;
        r) replace=${OPTARG};;
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
fi

echo "Pathname: $pathname";
echo "Find: $find";
echo "Replace with: $replace";

# (cd $pathname; array=( $( find "$find"* ) ))

# echo -n "Path to the folders:"
# read path
# cd path

#echo -n "Part of the filename to replace:"
#read files

#echo -n "Replace with:"
#read replacing

#echo $PATH
#echo $path

#newPath=$PATH:"/"+$path

#echo $files
#echo $replacing
# echo $path
# echo "$@"

# absolutePath="false"

# if [[ $path == *"~"  ]]; then
#    absolutePath="true"
# fi 
# #cd $path
# if [[ $absolutePath == "true" ]]; then
#    echo "its true"
# else
#    echo "its false"
# fi
#command gives us the an array of files
#array=( $( find "$path"* ) )

#print the length of the array
echo "${#array[@]}"

#value at index 0
#echo "${array[0]}"
