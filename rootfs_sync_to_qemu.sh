#!/usr/bin/bash

sudo mount -t ext3 rootfs-aarch64.ext3 /mnt/rootfs -o loop
sudo rm -rf /mnt/rootfs/*
sudo cp -rf rootfs-aarch64/* /mnt/rootfs/
sudo umount /mnt/rootfs
