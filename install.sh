#!/usr/bin/env bash

echo "Installing required packages..."
sudo apt install -y \
    git \
    ansible


echo "Downloading the repo to set up the environment..."
git clone https://github.com/pascalbe-dev/ubuntu-os-setup.git

echo "Setting up the environment ..."
cd ubuntu-os-setup
ansible-playbook developer-ubuntu.yml --ask-become-pass
