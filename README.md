# BatoZero
## Setup
- Installing will require SSH
```sh
ssh root@[device-ip]
```
- For Android Aceess use: [Termux](https://f-droid.org/en/packages/com.termux/)
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
 - Download Install Script
```sh
curl -LJO https://raw.githubusercontent.com/Jhaiywroumne/BatoZero/blob/main/Batocera.sh
```
 - Grant Run Permission
 ```sh
chmod u+x Batocera.sh
```
 - Run Install Script
```sh
./Batocera.sh | tee ./batocera.log
```
 - Enable Startup Service
     * Open Batocera Menu > System Settings > Services > Enable Zerotier

## Configuration
Enter Command
```
zerotier-cli <command>
```
Join Netwoek
```
zerotier-cli <network-id>
```

See all commands
```
zerotier-cli -h
```
