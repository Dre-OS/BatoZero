# BatoZero
## Setup
- Installing will require SSH
```sh
ssh root@[device-ip]
```

## Installation
 - Download install script
```sh
curl -LJO https://raw.githubusercontent.com/Jhaiywroumne/BatoZero/blob/main/Batocera.sh
```
  * Grant Run Permission
 ```sh
chmod u+x Batocera.sh
```
  * Run install script
```sh
./Batocera.sh | tee ./batocera.log
```
 - Enable Startup Service
     * Open Batocera Menu > System > Services > Enable Zerotier

## Use CLI
After the installation the cli can be used as following on SSH
```
zerotier-cli <command>
```
to see all commands use 
```
zerotier-cli -h
```
