#!/bin/bash
#
# Custom ramdisk script for the Samsung Galaxy Player 3.6 (EU/US)
# Jonathan Grundmann, androthan@gmail.com, 2013
#
# Script gets executed by mkbootimg.mk.

###AALTO_PROJECT###

pushd out/target/product/aalto/root/
find . | cpio -o -H newc | gzip > ../bootstrap/ramdisk-cyanogenmod.cpio.gz
popd

pushd out/target/product/aalto/recovery/root/
find . | cpio -o -H newc | gzip > ../../bootstrap/ramdisk-recovery.cpio.gz
popd

pushd out/target/product/aalto/bootstrap/
find . | cpio -o -H newc | gzip > ../combined-ramdisk.cpio.gz
popd

exit 0

###END###
