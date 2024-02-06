FROM centos:7
ADD /n2n-3.0.tar.gz .

RUN yum -y install autoconf automake libtool git kernel-headers make; yum clean all
# RUN tar -zxvf n2n-3.0.tar.gz && cd n2n-3.0 && bash autogen.sh && bash configure && make && make install
RUN cd n2n-3.0 && bash autogen.sh && bash configure && make && make install

ENV SUBNET_RANGE=192.168.200.0-192.168.200.0/24

EXPOSE 7654
EXPOSE 5645

ENTRYPOINT supernode -a ${SUBNET_RANGE} -f -v