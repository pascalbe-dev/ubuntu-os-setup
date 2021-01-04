#!/usr/bin/env bash

read -p "Download your vpn file (.ovpn file) to the Downloads directory. Then press Enter"
sudo mv $HOME/Downloads/*.ovpn $HOME/Documents/work.vpn
sudo cat $(pwd)/postinstall/data/vpn-extension.txt >>$HOME/Documents/work.vpn
