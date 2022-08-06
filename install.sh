#!/usr/bin/env bash

echo "Installing required packages..."
sudo apt install -y \
    git \
    ansible


echo "Downloading the repo to set up the environment..."
git clone git@github.com:pascalbe-dev/ubuntu-os-setup.git
