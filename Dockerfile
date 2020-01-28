FROM centos:7

RUN yum -y install net-tools

COPY show_details.sh /
