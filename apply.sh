#!/bin/bash

set -e

cd fw
git apply ../patches/fw.diff
cd linux
git apply ../../patches/linux.diff
cd ../u-boot-xlnx
git apply ../../patches/u-boot-xlnx.diff
cd ../buildroot
git apply ../../patches/buildroot.diff
cd ..
cp -f ../patches/Makefile Makefile
cd ..
