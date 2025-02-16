#!/bin/bash

qemu-system-arm \
    -M vexpress-a9 \
    -m 512M \
    -kernel $HOME/Code/linux/linux-6.13.2/arch/arm/boot/zImage \
    -dtb $HOME/Code/linux/linux-6.13.2/arch/arm/boot/dts/arm/vexpress-v2p-ca9.dtb \
    -append "root=/dev/mmcblk0 rw console=ttyAMA0" \
    -sd rootfs-arm32.ext3 \
    -nographic
