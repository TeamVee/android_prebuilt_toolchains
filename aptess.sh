#!/bin/bash

# Android Prebuilt Toolchains External Script Set - APTESS
# only for build ARM Linux Kernels
# Google GCC Toolchains Branch

echo "1) GCC 4.7 Toolchain from Google"
echo "2) GCC 4.8 Toolchain from Google"
unset errortoolchain
read -p "Choice: " -n 1 -s toolchain
case "$toolchain" in
	1 ) export CROSS_COMPILE="../android_prebuilt_toolchains/arm-eabi-4.7/bin/arm-eabi-"; ToolchainCompile="Google GCC 4.7";;
	2 ) export CROSS_COMPILE="../android_prebuilt_toolchains/arm-eabi-4.8/bin/arm-eabi-"; ToolchainCompile="Google GCC 4.8";;
	* ) echo "$toolchain - This option is not valid"; sleep .5; errortoolchain="ON";;
esac
if ! [ "$errortoolchain" == "ON" ]; then
	echo "$ToolchainCompile"
fi
