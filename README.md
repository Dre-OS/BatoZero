# BatoZero
BatoZero is an implementation of [Zerotier](https://github.com/zerotier/ZeroTierOne) tunneling for LAN games to be played over internet for Batocera
## Setup
Installing will require SSH
- For Windows CMD
```sh
ssh root@[device-ip]
```
- For Android Access use: [Termux](https://f-droid.org/en/packages/com.termux/)
   * Install APK
   * Update APT
   ```sh
   apt-get update
   ```
   * Install Open SSH
   ```sh
   apt-get install openssh
   ```
   * Connect
   ```sh
   ssh root@[device-ip]
   ```
## Installation
Add Zerotier to your Device
 - Download Install Script
```sh
curl -LJO https://raw.githubusercontent.com/Jhaiywroumne/BatoZero/main/BatoZero.sh
```
 - Grant Run Permission
 ```sh
chmod u+x BatoZero.sh
```
 - Run Install Script
```sh
./BatoZero.sh
```
 - Enable Startup Service
     * Open Batocera Menu > System Settings > Services > Enable Zerotier
- Restart your device

## Configuration
Enter Command
```
zerotier-cli <command>
```
Join Network
```
zerotier-cli <network-id>
```

See all commands
```
zerotier-cli -h
```
# Uninstallation
Remove Zerotier from your Device
```sh
cd /usr/bin
rm zerotier-one
cd /userdata/system/services
rm Zerotier
```
