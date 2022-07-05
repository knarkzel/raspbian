#!/usr/bin/env bash

if [[ ! -f  2021-01-11-raspios-buster-armhf.img ]]; then
    curl -O https://downloads.raspberrypi.org/raspios_armhf/images/raspios_armhf-2021-01-12/2021-01-11-raspios-buster-armhf.zip
    unzip 2021-01-11-raspios-buster-armhf.zip
    rm 2021-01-11-raspios-buster-armhf.zip
fi

qemu-system-arm -kernel kernel \
                -cpu arm1176 \
                -m 256 \
                -M versatilepb \
                -serial stdio \
                -append "root=/dev/sda2 rootfstype=ext4 rw" \
                -hda raspbian.img \
                -dtb buster.dtb \
                -no-reboot
