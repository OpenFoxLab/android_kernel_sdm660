
#!/bin/bash

export PATH=$(pwd)/android_aarch64_toolchain/bin:$PATH

build() {
    mkdir out
    make -C $(pwd) O=$(pwd)/out ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- KCFLAGS=-mno-android VARIANT_DEFCONFIG=sdm660_sec_a9y18qlte_eur_open_defconfig sdm660_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
    make -j64 -C $(pwd) O=$(pwd)/out ARCH=arm64 CROSS_COMPILE=aarch64-linux-android- KCFLAGS=-mno-android
}
