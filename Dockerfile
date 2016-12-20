############################################################
# Dockerfile to build IoTAnalysis container
# Based on Ubuntu
############################################################

FROM ubuntu:16.04
MAINTAINER Maintainer Tyler Halfpop

# Updates
RUN apt-get update && apt-get install -y
RUN apt-get update

# QEMU
RUN apt-get -y install qemu qemu-user qemu-user-static

# GDB Multiarch
RUN apt-get -y install gdb-multiarch

# BINFMT*
RUN apt-get -y install 'binfmt*'

# MIPS ARM Libraries
RUN apt-get -y install libc6-mipsel-cross 
RUN apt-get -y install libc6-armhf-armel-cross

# MIPS ARM Compilers
RUN apt-get -y install gcc-mipsel-linux-gnu     
RUN apt-get -y install gcc-arm-linux-gnueabihf

# Link Libraries for BINFMT
RUN mkdir /etc/qemu-binfmt
RUN ln -s /usr/mipsel-linux-gnu /etc/qemu-binfmt/mipsel
RUN ln -s /usr/arm-linux-gnueabihf /etc/qemu-binfmt/arm

# BASH Comand Prompt
CMD /bin/bash
