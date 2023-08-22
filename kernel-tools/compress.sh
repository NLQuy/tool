#!/bin/bash

if [ -n "$1" ]; then
    gcc -o exploit -static "$1"
    mv ./exploit ./initramfs
fi

cd initramfs
find . | cpio -o -H newc -R root:root | gzip -9 > ../initramfs.cpio.gz

