#!/bin/bash
set -euxo pipefail

yum update -y
yum install epel-release -y
yum update -y
yum install -y
  openvpn \
  wget \
  git \
  openssl

pushd /tmp
  git clone https://github.com/OpenVPN/easy-rsa
  mv easy-rsa/easyrsa3 /etc/openvpn/easy-rsa
popd

