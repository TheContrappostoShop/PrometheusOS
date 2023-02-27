#!/usr/bin/env bash

inotifywait -m -e create ~/printer_data/config/ | 
   while read file_path file_event file_name; do 
        if [[ $file_name == *.sl1 ]] ; then
            echo ${file_path}${file_name} event: ${file_event}
            echo "ODYSSEY_START FILE=${file_path}${file_name}" >> ~/printer_data/gcode/${file_name}.gcode
        fi
   done