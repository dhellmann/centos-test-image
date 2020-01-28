FROM centos:7

RUN yum -y install net-tools bridge-utils

COPY show_details.sh /
