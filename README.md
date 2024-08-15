Setup PHP development environment on Ubuntu:
- install PHPStorm
- install Docker
- install Composer & Symfony CLI
- create a new SSH key, if not already existing

Tested on Ubuntu LTS 22.04

# How to

Install Ansible Core: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-ubuntu

Launch playbook:
```
ansible-playbook playbook.yml -i inventories/local --ask-become-pass
```
