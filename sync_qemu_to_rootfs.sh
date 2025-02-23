#!/usr/bin/bash

sudo mount -t ext3 rootfs-aarch64.ext3 /mnt/rootfs
rm -rf ./rootfs-aarch64/code
cp -rf /mnt/rootfs/code rootfs-aarch64/
sudo umount /mnt/rootfs
