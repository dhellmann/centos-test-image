FROM fedora

RUN dnf install -y net-tools bridge-utils

COPY show_details.sh /
