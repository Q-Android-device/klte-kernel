#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=~/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

rm -rf output
mkdir output

#make -C $(pwd) O=output msm8974_sec_defconfig VARIANT_DEFCONFIG=lineage_klte_pn547_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -C $(pwd) O=output lineage_klte_pn547_defconfig
make -j16 -C $(pwd) O=output
