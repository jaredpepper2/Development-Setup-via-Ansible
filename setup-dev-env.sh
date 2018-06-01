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

# Setting Up
me="$(whoami)"
sudo mkdir -p /home/$me/Documents/Ansible
sudo echo $me > /home/$me/Documents/Ansible/username.txt
sudo mkdir -p /opt/Ansible
sudo mv /home/$me/Documents/Ansible/username.txt /opt/Ansible
sudo rm /home/$me/Documents/Ansible/username.txt

#Ansible magic
sudo ansible-pull -U https://github.com/jaredpepper2/Development-Setup-via-Ansible

#Clean up
sudo rm //opt/Ansible/username.txt
sudo rm /home/$me/Documents/Ansible/username.txt
