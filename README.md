# BatoZero
BatoZero is an implementation of [Zerotier](https://github.com/zerotier/ZeroTierOne) tunneling for Multiplayer LAN games to be played over internet configured to work with [Batocera](https://batocera.org/)

## Support
- Currently supports x86_64 and ARM
- Confirmned Working Devices [here](https://raw.githubusercontent.com/Dre-OS/BatoZero/main/Devices.txt)

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
     * Open Batocera Menu > System Settings > [Advanced] Services > Enable Zerotier
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
Check Connection
```
zerotier-cli info
```

See all commands
```
zerotier-cli -h
```

## Toggle
- To turn Zerotier On or Off
     * Open Batocera Menu > System Settings > [Advanced] Services > Enable/Disable Zerotier
     * Restart your device

## Uninstallation
Remove Zerotier from your Device
```sh
cd /usr/bin
rm zerotier-one
cd /userdata/system/services
rm Zerotier
cd /userdata/system
```
# Credits
- [Dre-OS](https://github.com/Dre-OS)  big bruh scriptor
- [rafalb8](https://github.com/rafalb8)  for the original static binaries files
