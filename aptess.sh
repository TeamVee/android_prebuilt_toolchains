#!/bin/bash

# Android Prebuilt Toolchains External Script Set - APTESS
# only for build ARM Linux Kernels
# Google GCC Toolchains Branch

clear
echo
echo "-APTESS - Toolchain Choice-"
echo
echo "1) GCC 4.7 Toolchain from Google"
echo "2) GCC 4.8 Toolchain from Google"
echo
echo "*) Any other key to Exit"
echo
unset errortoolchain
read -p "Choice: " -n 1 -s x
_CROSS_COMPILE=$CROSS_COMPILE
unset CROSS_COMPILE
case "$x" in
	1 ) export CROSS_COMPILE="$(pwd)/../android_prebuilt_toolchains/arm-eabi-4.7/bin/arm-eabi-"; ToolchainCompile="Google GCC 4.7";;
	2 ) export CROSS_COMPILE="$(pwd)/../android_prebuilt_toolchains/arm-eabi-4.8/bin/arm-eabi-"; ToolchainCompile="Google GCC 4.8";;
	* ) ;;
esac
if [ "$CROSS_COMPILE" == "" ]
then
	CROSS_COMPILE=$_CROSS_COMPILE
	unset _CROSS_COMPILE
else
	echo $ToolchainCompile
fi
