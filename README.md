# Ubuntu OS developer setup

## Requirements

- Ubuntu installation as installed [here](./docs/setup-ubuntu.md)
- Ubuntu version 24.04 (others might work too, but they are not tested)

## Setup

- open a new terminal
- run this command:
```bash
wget -O - https://raw.githubusercontent.com/pascalbe-dev/ubuntu-os-setup/master/install.sh | bash
```

## Update after changes

- open a new terminal
- run this command: 
```bash
ansible-playbook developer-ubuntu.yml --ask-become-pass
```

## Manual todos after the installation

- log out and back in again
- adjust the display alignment if you are using multiple displays
- login to the following tools
  - Google Chrome browser profiles
  - Spotify
  - WhatsApp Web
  - Slack
- copy your ssh key to the services you want to access (e.g. Github)
- add your custom Autokey texts
- clone the git repositories you need
- sync the settings for the following tools
  - [Intellij](./docs/sync-intellij-settings.md)
- adjust the configuration the Ulauncher extensions
  - ulauncher-todoist-capture
  - ulauncher-toggl
- adjust the mvn settings if you want to pull artifacts from private registries
- use the wallpaper from the pictures
