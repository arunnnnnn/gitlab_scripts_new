#!/bin/bash
file=arun.csv
while read line
do
  count=$(echo $line | grep -o ',' | wc -l)
  echo "Number of ,  is : $count"
  count1=$(expr $count - 11)
  echo "Number of env_variable  is : $count1"

done < $file

