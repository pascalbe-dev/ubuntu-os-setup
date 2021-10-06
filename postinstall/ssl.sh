#!/usr/bin/env bash

# see more here: https://askubuntu.com/a/649463
# SSL certificates can be retrieved via the browser (by exporting from the website via the lock symbol)
read -p "Download the ca certificates to your downloads folder. Make sure, they end with .crt (Ubuntu does not recognize all endings). Then press Enter"

sudo mkdir -p /usr/local/share/ca-certificates/custom
sudo mv $HOME/Downloads/*.crt /usr/local/share/ca-certificates/custom/

sudo update-ca-certificates
