# BatoZero
## Setup
- Installing will require SSH
```sh
ssh root@[device-ip]
```

## Installation
 - Run auto install script
```sh
curl -LJO https://github.com/Jhaiywroumne/BatoZero/blob/main/Batocera.sh
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