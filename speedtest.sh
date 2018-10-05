#!/bin/bash
# check if input arguments are set
if [ $# -eq  0 ]
  then
    echo "Please specify path to test"
    exit 1
fi

# use filesize from second arguemt or set it to default value
if [ -z "$2" ]
  then
    filesize=100M
  else
    filesize="$2"
fi

# generate random filename
postfix=$(tr -cd '[:alnum:]' < /dev/urandom | head -c15)

# get path from input argument
path=$1
file_out=${path}.tmp${postfix}
echo "writing test file ($filesize) to $path"
echo "..."

# wirte a temporary test file to file_out 
sudo dd if=/dev/zero of=$file_out bs=$filesize count=1 oflag=direct

# Don't mess up the storage, so delete files afterwars
sudo rm $file_out
#echo "removed tmp file $file_out"
