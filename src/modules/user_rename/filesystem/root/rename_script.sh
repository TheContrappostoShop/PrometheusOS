#!/usr/bin/env bash

arg=("$@")

BASE_USER="$1"
NEW_USER="$(grep "1000" /etc/passwd | awk -F ':' '{print $1}')"

echo "Renaming script and service references from user=$BASE_USER to user=$NEW_USER:"

for ((i=1;i<=$#-1;i++)) ; do
    FILE=$(echo ${arg[i]} | sed "s/\/home\/pi/\/home\/${NEW_USER}/")
    echo "References in ${FILE}"
    sudo sed -i "s/\/home\/${BASE_USER}/\/home\/${NEW_USER}/g" ${FILE}
    sudo sed -i "s/${BASE_USER}\s*$/${NEW_USER}/g" ${FILE}
done

systemctl disable user_rename.service
