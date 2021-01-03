#!/usr/bin/env bash

wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo apt install -y ./teamviewer_amd64.deb
rm -rf teamviewer_amd64.deb
