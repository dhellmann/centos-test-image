#!/bin/bash

set -x

export PATH=$PATH:/usr/sbin

while true; do
    cat /etc/centos-release
    ip addr
    netstat -nr
    bridge link show
    bridge vlan show
    brctl show

    sleep 60
done
