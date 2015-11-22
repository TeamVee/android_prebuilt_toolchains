#!/bin/bash

# Android Prebuilt Toolchains External Script Set - APTESS
# only for build ARM Linux Kernels
# Linaro GCC Toolchains Branch

echo "1) GCC 4.8.4 (2014.11) toolchain from Linaro"
echo "2) GCC 4.9.3 (2015.03) toolchain from Linaro"
unset errortoolchain
read -p "Choice: " -n 1 -s toolchain
case "$toolchain" in
	1 ) export CROSS_COMPILE="../android_prebuilt_toolchains/arm-linux-gnueabi-linaro_4.8.4-2014.11/bin/arm-linux-gnueabi-"; ToolchainCompile="Linaro GCC 4.8.4";;
	2 ) export CROSS_COMPILE="../android_prebuilt_toolchains/arm-cortex-linux-gnueabi-linaro_4.9.3-2015.03/bin/arm-cortex-linux-gnueabi-"; ToolchainCompile="Linaro GCC 4.9.3";;
	* ) echo "$toolchain - This option is not valid"; sleep .5; errortoolchain="ON";;
esac
if ! [ "$errortoolchain" == "ON" ]; then
	echo "$ToolchainCompile"
fi
