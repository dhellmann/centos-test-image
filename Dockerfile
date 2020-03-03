FROM fedora

RUN dnf install -y net-tools bridge-utils wget vim openssh-clients iputils traceroute

COPY show_details.sh /
