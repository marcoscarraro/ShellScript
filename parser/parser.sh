#!/bin/bash
IFS="
"
for LINE in $(cat $config_file | sed 's/#.*//g;s/ = /=/g;/^$/d') 
do
	key=$(echo $LINE | cut -d "=" -f 1)
	value=$(echo $LINE | cut -d "=" -f 2)
	eval $key=\"${value}\"
done