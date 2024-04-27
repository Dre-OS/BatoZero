#!/bin/sh

# Detect Architechture
arch=""
case $(uname -m) in
    x86_64) echo x86_64 || arch="amd64" ;;
    arm)    echo ARM || arch="arm" ;;
esac

# Download Zerotier
if [ "$arch" == "x86_64" ]; then
 curl -LJO https://github.com/Jhaiywroumne/BatoZero/releases/download/Latest/zerotier-one-aarch64.tar.gz
elif [ "$arch" == "arm" ]; then
 curl -LJO httls://github.com/Jhaiywroumne/BatoZero/releases/download/Latest/zerotier-one-x86_64.tar.gz
else
    echo Unsupported system architecture
    exit 1 # terminate and indicate error
fi

# Unpack downloaded archive
mkdir ~/bin
if [ "$arch" == "x86_64" ]; then
 tar -xzf zerotier-one-x86_64.tar.gz bin/zerotier-one -C ./bin
elif [ "$arch" == "arm" ]; then
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
