#!/usr/bin/bash
# part-a
var=$(wc -c < $1)
echo "Size of the File is : $var"
#part-b
vari=$(wc -l < $1)
echo "total number of lines are : $(( vari+1 ))"
#part-c
varia=$(wc -w < $1)
echo "total number of words are : $varia"
#part-d
i=1
echo '' >> $1
while IFS= read -r line
do
    count1=$( wc -w  <<< "$line" )
    echo "Line Number : $i Count of Words : $count1"
    echo
    let i++
done < $1
perl -i -pe "chomp if eof" $1
#part-e
sed -e 's/[^[:alpha:]]/ /g' $1 | tr '\n' " " |  tr -s " " | tr " " '\n'| tr '0-9A-Z' '0-9a-z' |
sort | uniq -c | sort -nr |while read count name
do
        if [ ${count} -gt 1 ]
        then
                echo "WORD: ${name} - COUNT OF REPITITON: ${count}"
        fi
done