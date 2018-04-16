#!/bin/bash
set -euxo pipefail

openvpn --genkey --secret /etc/openvpn/myvpn.tlsauth
mkdir /etc/openvpn/easy-rsa/keys

pushd /etc/openvpn/easy-rsa
  #./easyrsa init-pki
  #./easyrsa build-ca
  #./build-key-server server
popd

