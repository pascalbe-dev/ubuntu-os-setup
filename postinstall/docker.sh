#!/usr/bin/env bash

sudo groupadd docker
sudo usermod -aG docker ${USER}
newgrp docker

docker pull debian
