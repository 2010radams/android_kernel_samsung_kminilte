#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=/opt/toolchains/crosstool/arm-cortex_a7-linux-gnueabihf-UBERTC_6.3/bin/arm-eabi-


make mrproper
make g800f_custom_defconfig
make -j4 2>&1 | tee kernel_build.txt 
