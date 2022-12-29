SHELL := /bin/bash
.phony: cleanout prepareconfig build

export CROSS_COMPILE:=/home/darkaether0x2/kernel/arm-linux-androideabi-4.8/bin/arm-linux-androideabi-
export ARCH:=arm
export SUBARCH:=mach-msm

cleanout:
	make O=out clean
	make O=out mrproper

prepareconfig:
	make O=out my_config_docker_defconfig

build:
	make O=out -j4

menu:
	make O=out menuconfig
