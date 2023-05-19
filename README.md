# **Building Pathfinder**

## How to build Pathfinder from scratch?

- Clone Buildroot from GitHub:
```
git clone 
```

- Copy post-build.sh and config file (.config) to buildroot directory
- Overwrite raspberrypi4_defconfig on configs file
- Add this line to the end of the Config.in file on package directory
```
source "package/pathfinder/Config.in"
```
- Add pathfinder file to the package directory
- Run make command to build the image
```
make
```

## Booting from image

- Using dd or your preferred application, flash the sd card using the image in output/images directory named sdcard.img

## **You are all set 🚀**
> After powering the pi on, you can connect to Pathfinder using the IP address 192.168.1.100 on port 8080.