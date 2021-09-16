#!/usr/bin/env bash

read -p "Download your vpn file (.ovpn file) to the Downloads directory. Edit it, if required. Then press Enter"
sudo mv $HOME/Downloads/*.ovpn $HOME/Documents/work.ovpn
sudo nmcli connection import type openvpn file $HOME/Documents/work.ovpn
# prioritize standard connection so we can still access the normal internet
nmcli connection modify work ipv4.route-metric 1000
echo "Done. You can now add your username (and password) to the openvpn connection via the VPN settings."
