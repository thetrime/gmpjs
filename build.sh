#!/bin/sh

make distclean
./configure ABI=32 --build=i686-pc-darwin "CFLAGS=-m32" "CXXFLAGS=-m32" "LDFLAGS=-m32"
EMCONFIGURE_JS=1 emconfigure ./configure ABI=longlong --build=none --host=none "CFLAGS=-m32" "CXXFLAGS=-m32" "LDFLAGS=-m32"
make clean
EMMAKEN_CFLAGS="-g" make -j 2
