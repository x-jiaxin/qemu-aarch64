CROSS_COMPILE := aarch64-linux-gnu-
ARCH := arm64
CC := $(CROSS_COMPILE)gcc
LD := $(CROSS_COMPILE)ld
KERNEL_DIR := /home/xingjiaxin/Code/linux/linux-6.13.2
PWD := $(shell pwd)

obj-m := hello.o

build: kernel_modules

kernel_modules:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) clean
