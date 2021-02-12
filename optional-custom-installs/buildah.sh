#!/usr/bin/env bash

sudo add-apt-repository -y "deb https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/Debian_10/ /"
curl -L https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/Debian_10/Release.key | sudo apt-key add -
sudo apt -y install buildah