#!/usr/bin/bash
# part-a
echo "enter the string"
read var
rav=$(echo $var | rev)
echo "$rav"
# part-b
n=${#rav}
for (( i=0;i<n;i++ ))
do
    temp="${rav:$i:1}"
    temp=$( echo "$temp" | tr "0-9a-z" "1-9a-z_" | tr "0-9A-Z" "1-9A-Z_" )
    echo -n $temp
done
echo
# part-c
let m=n/2
for (( i=m;i<n;i++ ))
do
    temp1="${rav:$i:1}"
    # temp=$( echo "$temp" | tr "0-9a-z" "1-9a-z_" | tr "0-9A-Z" "1-9A-Z_" )
    echo -n $temp1
done
for (( i=m;i<n;i++ ))
do
    temp2="${var:$i:1}"
    echo -n $temp2
done