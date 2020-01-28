#!/bin/bash

set -x

export PATH=$PATH:/usr/sbin:/sbin

while true; do
    cat /etc/fedora-release
    rpm -q -l net-tools
    /sbin/ip addr
    netstat -nr
    bridge link show
    bridge vlan show
    brctl show

    sleep 60
done
