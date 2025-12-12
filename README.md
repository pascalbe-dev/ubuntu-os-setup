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

See [here](./docs/manual-todos-after-installation.md)
