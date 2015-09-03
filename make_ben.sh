#!/bin/bash

echo "build kernel"
export ARCH=arm
export CROSS_COMPILE=arm-linux-gnueabihf-

#make imx_v7_defconfig
make -j7 uImage 
#make modules

rm uImage
cp arch/arm/boot/uImage ./

echo "build end"
