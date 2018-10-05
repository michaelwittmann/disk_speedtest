#!/bin/bash
if [ $# -eq  0 ]
  then
    echo "Please specify path to test"
    exit 1
fi

filesize="$2"

if [ -z "$2" ]
  then
    filesize=100M
fi

n=15
postfix=$(tr -cd '[:alnum:]' < /dev/urandom | head -c$n)
path=$1
file_out=${path}.tmp${postfix}
echo "writing test file ($filesize) to $path"
echo "..."
sudo dd if=/dev/zero of=$file_out bs=$filesize count=1 oflag=direct

# Removing files
sudo rm $file_out
#echo "removed tmp file $file_out"
