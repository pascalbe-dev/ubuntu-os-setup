#!/usr/bin/env bash

sudo usermod -aG docker ${USER}
newgrp docker

docker pull debian
