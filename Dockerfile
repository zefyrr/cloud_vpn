FROM centos:7.4.1708

ADD install_openvpn.sh /root/scripts/install_openvpn.sh
RUN /root/scripts/install_openvpn.sh

ADD server.conf /etc/openvpn/server.conf
ADD easyrsa.vars /etc/openvpn/easy-rsa/vars

ADD config_openvpn.sh /root/scripts/config_openvpn.sh
RUN /root/scripts/config_openvpn.sh

