Setup PHP development environment on Ubuntu:
- install git, fish
- install PHPStorm
- install Docker
- install Composer & Symfony CLI
- install Claude Code
- create a new SSH key, if not already existing

Tested on Ubuntu LTS 22.04

# How to

Install Ansible Core: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu

Launch playbook:
```
ansible-galaxy collection install community.general
ansible-playbook playbook.yml -i inventories/local --ask-become-pass
```
