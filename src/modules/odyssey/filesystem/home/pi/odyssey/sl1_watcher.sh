#!/usr/bin/env bash

inotifywait -m --format "%w,%e,%f" -e create -e moved_to ~/printer_data/config/ |
   while IFS=',' read file_path file_event file_name; do
        if [[ $file_name == *.sl1 ]] ; then
            echo ${file_path}${file_name} event: ${file_event}
            cp ${file_path}${file_name}  ~/printer_data/gcodes/${file_name}
            echo "ODYSSEY_START FILE=\"~/printer_data/gcodes/${file_name}\"" >> ~/printer_data/gcodes/"${file_name}".gcode
        fi
   done
