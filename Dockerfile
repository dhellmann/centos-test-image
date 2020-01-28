FROM centos

RUN yum -y install net-tools bridge-utils

COPY show_details.sh /
