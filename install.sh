#!/usr/bin/env bash

set -e

# get latest remote repository info
sudo apt update
# update existing packages
sudo apt upgrade -y
# install all standard linux packages
while read package; do sudo apt install -y "$package" || exit -1; done <apt-packages

# TODO: THIS SHOULD NOT BE REQUIRED IF THE KEY IS ADDED CORRECTLY IN THE WHILE LOOP
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# add gpg keys for different repos
while read url; do curl -fsSL "$url" | sudo apt-key add - || exit -1; done <apt-repo-keys-external
# add 3rd party apt repositories
while read repo; do sudo add-apt-repository -y "$repo" || exit -1; done <apt-repositories-external
# add apt packages from 3rd party repositories
while read package; do sudo apt install -y "$package" || exit -1; done <apt-packages-external

# add snap packages
while read package; do sudo snap install "$package" || exit -1; done <snap-packages
# add classic snap packages
while read package; do sudo snap install "$package" --classic || exit -1; done <snap-packages-classic

# execute custom installations (not provided via default package managers)
for file in $(pwd)/custom-installs/*.sh; do
    bash "$file" -H || exit -1
done

# add symlinks to home files
# TODO: SYMLINK ALL FILES IN FOLDER WITHOUT SPECIFYING ALL NAMES
ln -s $(pwd)/home-files/.editorconfig $HOME/.editorconfig
ln -s $(pwd)/home-files/.gitconfig $HOME/.gitconfig
ln -s $(pwd)/home-files/.zshaliases.sh $HOME/.zshaliases
ln -s $(pwd)/home-files/.zshenv.sh $HOME/.zshenv
ln -sf $(pwd)/home-files/.zshrc.sh $HOME/.zshrc
ln -s $(pwd)/home-files/config $HOME/.ssh/config

# add symlinks to autostart apps
ln -s $(pwd)/autostart/autokey.desktop $HOME/.config/autostart/autokey.desktop
ln -s $(pwd)/autostart/guake.desktop $HOME/.config/autostart/guake.desktop
ln -s $(pwd)/autostart/ulauncher.desktop $HOME/.config/autostart/ulauncher.desktop

# execute scripts to customize the installations
for file in $(pwd)/postinstall/*.sh; do
    bash "$file" -H || exit -1
done

# clean up package manager stuff
sudo apt autoremove -y
