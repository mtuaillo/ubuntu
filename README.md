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
```

Launch playbook:
```bash
ansible-galaxy collection install community.general
ansible-playbook playbook.yml -i inventories/local --ask-become-pass
```
