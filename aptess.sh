#!/bin/bash

# Android Prebuilt Toolchains External Script Set - APTESS
# only for build ARM Linux Kernels

echo "1) GCC 4.7 Toolchain from Google"
echo "2) GCC 4.8 Toolchain from Google"
echo "3) GCC 4.6.4 (2013.12) toolchain from Linaro"
echo "4) GCC 4.7.4 (2013.12) toolchain from Linaro"
echo "5) GCC 4.8.4 (2014.11) toolchain from Linaro"
echo "6) GCC 4.9.3 (2015.03) toolchain from Linaro"
unset errortoolchain
read -p "Choice: " -n 1 -s toolchain
case "$toolchain" in
	1 ) export CROSS_COMPILE="../android_prebuilt_toolchains/arm-eabi-4.7/bin/arm-eabi-"; ToolchainCompile="Google GCC 4.7";;
	2 ) export CROSS_COMPILE="../android_prebuilt_toolchains/arm-eabi-4.8/bin/arm-eabi-"; ToolchainCompile="Google GCC 4.8";;
	3 ) export CROSS_COMPILE="../android_prebuilt_toolchains/arm-unknown-linux-gnueabi-linaro_4.6.4-2013.05/bin/arm-unknown-linux-gnueabi-"; ToolchainCompile="Linaro GCC 4.6.4";;
	4 ) export CROSS_COMPILE="../android_prebuilt_toolchains/arm-unknown-linux-gnueabi-linaro_4.7.4-2013.12/bin/arm-unknown-linux-gnueabi-"; ToolchainCompile="Linaro GCC 4.7.4";;
	5 ) export CROSS_COMPILE="../android_prebuilt_toolchains/arm-linux-gnueabi-linaro_4.8.4-2014.11/bin/arm-linux-gnueabi-"; ToolchainCompile="Linaro GCC 4.8.4";;
	6 ) export CROSS_COMPILE="../android_prebuilt_toolchains/arm-cortex-linux-gnueabi-linaro_4.9.3-2015.03/bin/arm-cortex-linux-gnueabi-"; ToolchainCompile="Linaro GCC 4.9.3";;
	* ) echo "$toolchain - This option is not valid"; sleep .5; errortoolchain="ON";;
esac
if ! [ "$errortoolchain" == "ON" ]; then
	echo "$ToolchainCompile"
fi
