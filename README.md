Setup PHP development environment on Ubuntu:
- install git, fish
- install PHPStorm
- install Docker
- install Composer & Symfony CLI
- install Claude Code
- create a new SSH key, if not already existing

Tested on Ubuntu LTS 22.04

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
