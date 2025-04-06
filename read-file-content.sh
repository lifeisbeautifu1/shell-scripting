#! /bin/bash

while read line
do
    echo $line
done < read-file-content.sh

cat read-file-content.sh | while read line
do
    echo $line
done
