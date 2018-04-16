#!/bin/bash
set -euxo pipefail

openvpn --genkey --secret /etc/openvpn/myvpn.tlsauth
mkdir /etc/openvpn/easy-rsa/keys


