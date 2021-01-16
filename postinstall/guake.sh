#!/usr/bin/env bash

dconf write /apps/guake/general/window-height 35
dconf write /apps/guake/style/font/palette "'#1C1C1D1D1919:#D0D01B1B2424:#A7A7D3D32C2C:#D8D8CFCF6767:#6161B8B8D0D0:#69695A5ABBBB:#D5D538386464:#FEFEFFFFFEFE:#1C1C1D1D1919:#D0D01B1B2424:#A7A7D3D32C2C:#D8D8CFCF6767:#6161B8B8D0D0:#69695A5ABBBB:#D5D538386464:#FEFEFFFFFEFE:#F6F6F5F5EEEE:#232325252626'"
dconf write /apps/guake/style/font/palette-name "'Monokai'"
dconf write /apps/guake/style/background/transparency 90
dconf write /apps/guake/keybindings/global/show-hide "'F10'"
dconf write /apps/guake/keybindings/local/new-tab "'<Alt>t'"
dconf write /apps/guake/keybindings/local/close-tab "'<Alt>w'"
dconf write /apps/guake/keybindings/local/previous-tab "'<Alt>Left'"
dconf write /apps/guake/keybindings/local/next-tab "'<Alt>Right'"
dconf write /apps/guake/keybindings/local/rename-current-tab "'<Alt>r'"
dconf write /apps/guake/keybindings/local/clipboard-copy "'<Alt>c'"
dconf write /apps/guake/keybindings/local/clipboard-paste "'<Alt>v'"
