#!/usr/bin/env bash

INSTALL_DIR=$1

cd ${INSTALL_DIR}

./bootstrap

./configure --enable-ftdi --enable-sysfsgpio --enable-bcm2835gpio

make -j4

sudo make install
