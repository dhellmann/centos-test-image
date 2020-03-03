FROM fedora

RUN dnf install -y net-tools bridge-utils wget vim openssh-clients iputils traceroute

RUN mkdir /.ssh
RUN chmod 0755 /.ssh
RUN touch /.ssh/known_hosts
RUN chmod 0644 /.ssh/known_hosts
RUN touch /.ssh/id_rsa
RUN chmod 0644 /.ssh/id_rsa

COPY show_details.sh /
