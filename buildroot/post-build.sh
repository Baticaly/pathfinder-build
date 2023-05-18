#!/bin/sh

# Set permissions for the symlink
chmod 755 ${TARGET_DIR}/etc/init.d/S99pathfinder-service

# Create symlink for SysV init in target directory
ln -sf /etc/init.d/pathfinder-service ${TARGET_DIR}/etc/init.d/S99pathfinder-service

# Modify network configuration for static IP address
cat <<EOF > "${TARGET_DIR}/etc/network/interfaces"

auto eth0
iface eth0 inet static
    address 192.168.1.100
    netmask 255.255.255.0
    gateway 192.168.1.1
    dns-nameservers 8.8.8.8
EOF