FROM fedora

RUN dnf install -y net-tools bridge-utils wget

COPY show_details.sh /
