#!/usr/bin/env bash

# if openocd not installed, run the setup script and install it in the user's home dir
if  ! command -v openocd &> /dev/null ; then
    SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
    ${SCRIPT_DIR}/openocd_setup.sh ~/openocd
fi

openocd -f interface/raspberrypi-swd.cfg -f target/rp2040.cfg -c "init; reset; exit"
