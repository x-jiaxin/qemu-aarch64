sudo mount -t ext3 rootfs-arm32.ext3 /mnt/rootfs -o loop
sudo cp -rf rootfs-arm32/* /mnt/rootfs/
sudo umount /mnt/rootfs
