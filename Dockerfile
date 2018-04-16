FROM centos:7.4.1708

RUN yum update -y
RUN yum install epel-release -y
RUN yum update -y
RUN yum install -y openvpn wget git
WORKDIR /tmp
RUN git clone https://github.com/OpenVPN/easy-rsa
RUN mv easy-rsa /etc/openvpn
ADD server.conf /etc/openvpn/server.conf
