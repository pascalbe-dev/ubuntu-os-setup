#!/usr/bin/env bash

echo "Updating apt cache..."
sudo apt update

echo "Installing required packages..."
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y \
    git \
    ansible

echo "Downloading the repo to set up the environment..."
git clone https://github.com/pascalbe-dev/ubuntu-os-setup.git

echo "Setting up the environment ..."
cd ubuntu-os-setup
ansible-playbook developer-ubuntu.yml --ask-become-pass
