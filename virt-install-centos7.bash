#!/bin/bash
virt-install \
--name centos7 \
--ram 8192 \
--disk path=/var/kvm/images/centos7.img,size=30 \
--vcpus 4 \
--os-type linux \
--os-variant rhel7 \
--network bridge=br0 \
--graphics none \
--console pty,target_type=serial \
--location='/home/kotaro/iso/CentOS-7-x86_64-Minimal-1611.iso' \
--extra-args 'console=ttyS0,115200n8 serial'
