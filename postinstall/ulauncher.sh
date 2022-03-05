#!/usr/bin/env bash

mkdir -p $HOME/.config/ulauncher
ln -sf $(pwd)/postinstall/data/settings.json $HOME/.config/ulauncher/
ln -sf $(pwd)/postinstall/data/extensions.json $HOME/.config/ulauncher/

# todoist extension
pip3 install todoist-python
