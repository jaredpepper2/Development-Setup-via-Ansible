#!/bin/bash

# System updates
sudo apt-get update

# Git
sudo apt install -y git

# Ansible
sudo apt-get install -y software-properties-common
sudo apt-add-repository -y ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible

GIT_REPO=$(https://github.com/jaredpepper2/Development-Setup-via-Ansible/blob/master/development-setup.sh)
sudo ansible-pull -U $GIT_REPO
