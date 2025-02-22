#!/bin/bash

qemu-system-aarch64 \
    -M virt \
    -cpu cortex-a57 \
    -m 512M \
    -kernel "$HOME"/Code/linux/linux-6.13.2/arch/arm64/boot/Image \
    -initrd "$HOME"/Code/busybox/busybox-1.36.1/initramfs.cpio.gz \
    -append "nokaslr rdinit=/linuxrc root=/dev/vda rw console=ttyAMA0" \
    -drive format=raw,file=./rootfs-aarch64.ext3 \
    -nographic \
    -S -s
