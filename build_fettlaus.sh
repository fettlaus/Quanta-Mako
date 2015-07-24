#!/bin/bash

#
# Build script for modified Quanta Kernel
#
# Compiling without arguments will compile AOSP 
# Compiling with cm or CM will compile CM
#

dir="$(dirname "$0")"

# Use our own defconfig instead
cp $dir/arch/arm/configs/fettlaus_defconfig $dir/arch/arm/configs/quanta_defconfig

if [[ "$1" =~ "cm" || "$1" =~ "CM" ]] ; then

"$dir/build.sh" cm

else

"$dir/build.sh"

fi
