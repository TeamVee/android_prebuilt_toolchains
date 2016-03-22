#!/bin/bash

# Android Prebuilt Toolchains External Script Set - APTESS
# only for build ARM Linux Kernels
# Linaro GCC Toolchains Branch

clear
echo
echo "-APTESS - Toolchain Choice-"
echo
echo "1) GCC 4.8.4 (2014.11) toolchain from Linaro"
echo "2) GCC 4.9.4 (2015.06) toolchain from Linaro"
echo
echo "*) Any other key to Exit"
echo
unset errortoolchain
read -p "Choice: " -n 1 -s x
_CROSS_COMPILE=$CROSS_COMPILE
unset CROSS_COMPILE
case "$x" in
-	1 ) export CROSS_COMPILE="$(pwd)/android_prebuilt_toolchains/arm-linux-gnueabi-linaro_4.8.4-2014.11/bin/arm-linux-gnueabi-"; ToolchainCompile="Linaro GCC 4.8.4";;
-	2 ) export CROSS_COMPILE="$(pwd)/android_prebuilt_toolchains/arm-cortex-linux-gnueabi-linaro_4.9.4-2015.06/bin/arm-cortex-linux-gnueabi-"; ToolchainCompile="Linaro GCC 4.9.4";;
	* ) ;;
esac
if [ "$CROSS_COMPILE" == "" ]
then
	CROSS_COMPILE=$_CROSS_COMPILE
	unset _CROSS_COMPILE
else
	echo $ToolchainCompile
fi
