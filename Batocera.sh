#!/bin/sh

ARCH=""
# Detect Architechture
case $(uname -m) in
    x86_64) ARCH="x86_64" ;;
    arm)    ARCH="arm" ;;
esac
# Download Zerotier
if [ "$ARCH" == "x86_64" ]; then
 curl -LJO https://github.com/Jhaiywroumne/BatoZero/releases/download/Latest/zerotier-one-aarch64.tar.gz
elif [ "$ARCH" == "arm" ]; then
 curl -LJO httls://github.com/Jhaiywroumne/BatoZero/releases/download/Latest/zerotier-one-x86_64.tar.gz
else
    echo Unsupported system architecture
    exit 1 # terminate and indicate error
fi

# Unpack downloaded archive
mkdir ~/bin
if [ "$ARCH" == "x86_64" ]; then
 tar -xzf zerotier-one-x86_64.tar.gz bin/zerotier-one -C ./bin
elif [ "$ARCH" == "arm" ]; then
 tar -xzf zerotier-one-aarch64.tar.gz bin/zerotier-one -C ./bin
else
    echo Unsupported system architecture
    exit 1 # terminate and indicate error
fi

# Install to root bin directory
install bin/* /usr/bin

# Cleanup after installation
rm zerotier-one-aarch64.tar.gz zerotier-one-x86_64.tar.gz

# Setup Startup File
cd /userdata/system/services
curl -LJO https://github.com/Jhaiywroumne/BatoZero/blob/main/Zerotier
;;
