#!/bin/bash
enviroment_type=$1
REPOSRC="https://github.com/jaredpepper2/Development-Setup-via-Ansible.git"


Install_Ansible()
{
  # System updates
  sudo apt-get update

  # Git
  sudo apt install -y git

  # Ansible
  sudo apt-get install -y software-properties-common
  sudo apt-add-repository -y ppa:ansible/ansible
  sudo apt-get update
  sudo apt-get install -y ansible
}

Configure_Enviroment()
{
  # Setting Up Ansible Variables
  me="$(whoami)"
  mkdir -p /home/$me/Documents/Ansible
  sudo echo $me > /home/$me/Documents/Ansible/username.txt
  sudo mkdir -p /tmp/Ansible
  sudo mv /home/$me/Documents/Ansible/username.txt /tmp/Ansible

  # Getting Latest Version of Git Repo
  LOCALREPO="/home/$me/Documents/Ansible"
  LOCALREPO_VC_DIR="$LOCALREPO"/.git

  if [ ! -d "$LOCALREPO_VC_DIR" ]
  then
      cd "$LOCALREPO"
      echo "Cloning latest version of Repository"
      git clone "$REPOSRC"
  else
      cd "$LOCALREPO"
      echo "Pulling latest version of Repository"
      git pull "$REPOSRC"
  fi

  #Ansible magic
  sudo ansible-playbook /home/$me/Documents/Ansible/Development-Setup-via-Ansible/"$enviroment_type"_Setup.yml
}

Clean_Up()
{
  #Clean up
  echo "Cleaning Up"
  sudo rm -rf /opt/Ansible
  sudo rm -rf /home/$me/Documents/Ansible
}

case "$enviroment_type" in

devOps | devops | Devops | DevOps)
echo "Setting up a DevOps Enviroment on your machine"
enviroment_type="DevOps"

# Run Functions
Install_Ansible
Configure_Enviroment

##
# DevOps does not clean up, so that the GitRepo can be configured
##
    ;;
test | tester | Test | Tester)
echo "Setting up a Tester Enviroment on your machine"
enviroment_type="Tester"

# Run Functions
Install_Ansible
Configure_Enviroment
Clean_Up

    ;;
dev | development | Dev | Development)
echo "Setting up a Development Enviroment on your machine"
enviroment_type="Developer"

# Run Functions
Install_Ansible
Configure_Enviroment
Clean_Up

    ;;
management | Managment | manage | Manage)
echo "Setting up the Managment Enviroment on your machine"
enviroment_type="Managment"

# Run Functions
Install_Ansible
Configure_Enviroment
Clean_Up

    ;;
*)
echo "Please select what enviroment you would like to set up on this machine, by passing in one of the following arguments into this script:"
echo "Development, Tester, DevOps, Managment"
exit 1
    ;;
esac
