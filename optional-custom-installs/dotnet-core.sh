#!/usr/bin/env bash

export FILE_NAME=packages-microsoft-prod.deb

wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O $FILE_NAME
sudo dpkg -i $FILE_NAME

sudo apt update
sudo apt install -y apt-transport-https
sudo apt install -y dotnet-sdk-5.0
sudo apt install -y aspnetcore-runtime-5.0

rm $FILE_NAME
