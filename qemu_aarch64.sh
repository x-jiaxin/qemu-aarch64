#!/bin/bash

start_qemu_normal() {
    local QEMU_CMD="qemu-system-aarch64 \
        -M virt \
        -cpu cortex-a57 \
        -m 512M \
        -kernel \"$HOME\"/Code/linux/linux-6.13.2/arch/arm64/boot/Image \
        -initrd \"$HOME\"/Code/busybox/busybox-1.36.1/initramfs.cpio.gz \
        -append \"nokaslr rdinit=/linuxrc root=/dev/vda rw console=ttyAMA0\" \
        -drive format=raw,file=./rootfs-aarch64.ext3 \
        -nographic"

    echo "[INFO] 启动 QEMU（正常模式）..."
    eval "$QEMU_CMD"
}

start_qemu_debug() {
    local QEMU_CMD="qemu-system-aarch64 \
        -M virt \
        -cpu cortex-a57 \
        -m 512M \
        -kernel \"$HOME\"/Code/linux/linux-6.13.2/arch/arm64/boot/Image \
        -initrd \"$HOME\"/Code/busybox/busybox-1.36.1/initramfs.cpio.gz \
        -append \"nokaslr rdinit=/linuxrc root=/dev/vda rw console=ttyAMA0\" \
        -drive format=raw,file=./rootfs-aarch64.ext3 \
        -nographic -s -S"

    echo "[INFO] 启用 QEMU 调试模式 (-s -S)，等待gdb连接..."
    eval "$QEMU_CMD"
}

main() {
    if [[ "$1" == "-debug" ]]; then
        start_qemu_debug
    else
        start_qemu_normal
    fi
}

main "$1"
