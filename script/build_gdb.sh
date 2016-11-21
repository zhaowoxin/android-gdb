#!/bin/bash

export GDB_SRC=~/workbench/gdb/src/gdb-7.6
export GDB_BUILD=~/workbench/gdb/build
cd $GDB_SRC

export TARGETMACH=arm-none-linux-gnueabi
export BUILDMACH=i686-pc-linux-gnu
export CROSS=arm-linux-androideabi
export CC=${CROSS}-gcc
export LD=${CROSS}-ld
export AS=${CROSS}-as
export AR=${CROSS}-ar
export CFLAGS="-fPIE -pie --sysroot=/home/yangzhao/android-ndk-r10d/platforms/android-9/arch-arm/ -DNO_TTY_DRIVER"

cd ../build/
./configure --prefix=/home/yangzhao/workbench/gdb/final --host=$TARGETMACH --disable-tui -disable-gdbserver
make 
