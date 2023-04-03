#!/usr/bin/env bash

arg=("$@")

BASE_USER="$1"
NEW_USER="$(grep "1000" /etc/passwd | awk -F ':' '{print $1}')"

#echo "${arg}"
echo "$0"
echo "$@"
echo "$#"
echo "Renaming script and service references from user=$BASE_USER to user=$NEW_USER:"

for ((i=1;i<=$#-1;i++)) ; do
    echo "References in ${arg[i]}"
    sudo sed -i "s/\/home\/${BASE_USER}/\/home\/${NEW_USER}/g" ${arg[i]}
    sudo sed -i "s/${BASE_USER}\s*$/${NEW_USER}/g" ${arg[i]}
done
