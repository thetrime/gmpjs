#!/bin/sh

rebuild_all()
{
    make distclean || true
    EMCONFIGURE_JS=1 emconfigure ./configure CC_FOR_BUILD=gcc CC=emcc ABI=standard --build=none --disable-assembly CFLAGS=-m32 CXXFLAGS=-m32 LDFLAGS=-m32 && make clean && make -j 2
}

make || rebuild_all
