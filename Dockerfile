FROM fedora

RUN dnf install -y net-tools

COPY show_details.sh /
