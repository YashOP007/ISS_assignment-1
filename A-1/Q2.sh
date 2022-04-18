#!/usr/bin/bash
var="quotes.txt"
# echo $inp
while IFS= read -r line
do
  auth=`cut -d "~" -f2- <<< "$line"`
  quote=`echo $line | cut -d "~" -f1`
  if [ -z "$line" ]
  then
  continue
  else
  echo "$auth once said,\""$quote"\""
  fi
done < "$var" > speech.txt