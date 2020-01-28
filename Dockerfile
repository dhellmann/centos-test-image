FROM centos

RUN yum -y install net-tools

COPY show_details.sh /
