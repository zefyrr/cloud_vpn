FROM centos:7.4.1708

ADD install_openvpn.sh /root/scripts/install_openvpn.sh
RUN /root/scripts/install_openvpn.sh
ADD server.conf /etc/openvpn/server.conf

