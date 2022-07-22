#!/bin/bash


cmake \
  -S ${SRC_DIR} \
  -B ${SRC_DIR}/build \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" 

cd build
make -j4 install

