# Ubuntu OS developer setup

## Requirements

- Ubuntu installation with Gnome and hard drive encryption (minimal installation is enough)
- Ubuntu version 22.04 (others might work too, but they are not tested)

## Setup

- open a new terminal
- copy and run this command: `wget -O - https://raw.githubusercontent.com/pascalbe-dev/ubuntu-os-setup/master/install.sh | bash`

## Update after changes

- open a new terminal
- copy and run this command: `ansible-playbook developer-ubuntu.yml --ask-become-pass`

## Manual todos after the installation

- log out and back in again
- login to the following tools
  - Gnome Online Accounts (for calendar, ...)
  - Google chrome browser profiles
  - Mailspring
  - Spotify
  - WhatsApp Web
- copy your ssh key to the services you want to access (e.g. Github)
- add your custom Autokey texts
- clone the git repositories you need
- sync the settings for the following tools
  - VSCode
  - Intellij
- adjust the configuration the Ulauncher extensions
  - ulauncher-todoist-capture
  - ulauncher-toggl
- adjust the display alignment if you are using multiple displays
- adjust the mvn settings if you want to pull artifacts from private registries
