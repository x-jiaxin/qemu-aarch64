# CROSS_COMPILE := aarch64-linux-gnu-
# ARCH := arm64

# LD := ld.lld-18
# LDFLAGS += -fuse-ld=lld  # clang链接器
KERNEL_DIR := $(HOME)/Code/linux/linux-6.13.2
PWD := $(shell pwd)

obj-m := hello.o

build: kernel_modules

kernel_modules:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) CC="$(CC) --target=aarch64-linux-gnu" modules

clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) clean
