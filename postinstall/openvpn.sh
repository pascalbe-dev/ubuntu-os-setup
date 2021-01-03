#!/usr/bin/env bash

read -p "Download your vpn file (.ovpn file) to the Downloads directory. Then press Enter"
sudo mv $HOME/Downloads/*.ovpn /etc/openvpn/work.vpn
sudo cat $(pwd)/home-files/data/vpn-extension.txt >>/etc/openvpn/work.vpn
