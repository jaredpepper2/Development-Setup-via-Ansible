#!/bin/bash
enviroment_type=$1

case "$enviroment_type" in

devOps | devops | Devops | DevOps)
echo "Setting up a DevOps Enviroment on your machine"
$enviroment_type = DevOps
    ;;
test | tester | Test | Tester)
echo "Setting up a Tester Enviroment on your machine"
$enviroment_type = Tester
    ;;
dev | development | Dev | Development)
echo "Setting up a Development Enviroment on your machine"
$enviroment_type = Developer
    ;;
management | Managment | manage | Manage)
echo "Setting up the Managment Enviroment on your machine"
$enviroment_type = Managment
    ;;
*)
echo "Please select what enviroment you would like to set up on this machine, by passing in one of the following arguments into this script:"
echo "Development, Tester, DevOps, Managment"
exit 1
    ;;
esac

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
mkdir -p /home/$me/Documents/Ansible
sudo rm -rf /home/$me/Documents/Ansible/Development-Setup-via-Ansible
sudo echo $me > /home/$me/Documents/Ansible/username.txt
sudo mkdir -p /opt/Ansible
sudo mv /home/$me/Documents/Ansible/username.txt /opt/Ansible

git clone https://github.com/jaredpepper2/Development-Setup-via-Ansible.git /home/$me/Documents/Ansible

#Ansible magic
sudo ansible-playbook /home/$me/Documents/Ansible/"$enviroment_type"_setup.yml
#sudo ansible-pull -U https://github.com/jaredpepper2/Development-Setup-via-Ansible
#Clean up
sudo rm /opt/Ansible/username.txt
