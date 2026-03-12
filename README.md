Ansible playbook to setup PHP development environment on Ubuntu:
- install fish as default shell
- install git with config
- install PHPStorm
- install Docker and Docker Desktop
- install Composer & Symfony CLI
- create a new SSH key, if not already existing

Tested on Ubuntu LTS 24.04 LTS, Ubuntu Latest

# How to

Install Ansible Core & Git:
```bash
sudo apt install git ansible-core
ansible-galaxy collection install community.general
```

Launch playbook (Ubuntu 24.04 LTS and older):
```bash
ansible-playbook playbook.yml -i inventories/local --ask-become-pass
```

Launch playbook (Ubuntu 25.10 and more recent):
```bash
ansible-playbook playbook.yml -i inventories/local --ask-become-pass -e "ansible_become_exe=/usr/bin/sudo.ws"
```
