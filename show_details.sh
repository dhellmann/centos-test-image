#!/bin/bash

set -x

export PATH=$PATH:/usr/sbin:/sbin

function download {
    /usr/bin/wget \
        -v --progress=dot \
        -o /dev/null \
        "$1"
    echo "exited $?"
}

while true; do
    cat /etc/fedora-release
    rpm -q -l net-tools
    rpm -q -l bridge-utils
    ifconfig -a
    netstat -nr
    bridge link show
    bridge vlan show
    brctl show

    ls -al /output
    cd /output

    download \
        'http://hive-provisioner.e2e.bos.redhat.com/rhcos-44.81.202001030903.0-qemu.x86_64.qcow2.gz?sha256=a7931dc062f4dcd1f614e487bac8c53699d'

    download \
        'http://hive-provisioner.e2e.bos.redhat.com/rhcos-44.81.202001030903.0-openstack.x86_64.qcow2.gz?sha256=7e24f818051923d910bb0fe40f0a29430a27b94ab55a4de5313a5890784b50bd'

    sleep 60
done
