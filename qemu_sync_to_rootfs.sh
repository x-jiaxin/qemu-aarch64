#!/usr/bin/bash

sudo mount -t ext3 rootfs-aarch64.ext3 /mnt/rootfs -o loop
sudo rm -rf ./rootfs-aarch64/*
sudo cp -rf /mnt/rootfs/* rootfs-aarch64
sudo umount /mnt/rootfs
