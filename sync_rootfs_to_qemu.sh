#!/usr/bin/bash

sudo mount -t ext3 rootfs-aarch64.ext3 /mnt/rootfs
rm -rf /mnt/rootfs/code
cp -rf rootfs-aarch64/code /mnt/rootfs/
sudo umount /mnt/rootfs
