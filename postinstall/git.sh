#!/usr/bin/env bash

cat /dev/zero | ssh-keygen -q -N "" >/dev/null
cat $HOME/.ssh/id_rsa.pub | xclip -sel clip
read -p "Copy your SSH key to the services, which require it (github, other git servers). It is already in your clipboard. Then press Enter"
cp $(pwd)/postinstall/data/.gitconfig ~/
read -p "Adjust the .gitconfig file in your home directory to match your email address and name. Then press Enter"
