#!/bin/bash

set -x

export PATH=$PATH:/usr/sbin:/sbin

while true; do
    cat /etc/fedora-release
    rpm -q -l net-tools
    rpm -q -l bridge-utils
    ifconfig -a
    netstat -nr
    bridge link show
    bridge vlan show
    brctl show

    /usr/bin/wget -v http://hive-provisioner.e2e.bos.redhat.com/rhcos-44.81.202001030903.0-qemu.x86_64.qcow2.gz?sha256=a7931dc062f4dcd1f614e487bac8c53699d -o /output/img.gz

    sleep 60
done
