#!/bin/sh

# Set permissions for the symlink
chmod 755 ${TARGET_DIR}/etc/init.d/S99pathfinder-service

# Create symlink for SysV init in target directory
ln -sf /etc/init.d/pathfinder-service ${TARGET_DIR}/etc/init.d/S99pathfinder-service