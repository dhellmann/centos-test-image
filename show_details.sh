#!/bin/bash

set -x

export PATH=$PATH:/usr/sbin

while true; do
    ip addr
    netstat -nr
    bridge link show
    bridge vlan show
    brctl show

    sleep 60
done
