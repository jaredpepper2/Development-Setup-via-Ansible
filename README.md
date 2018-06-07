# Development-Setup-via-Ansible
Setup a development environment on Ubuntu with Ansible.

## Steps
**You only need to download and run the 'setup-dev-env.sh' file.** You do not need to download any other file. The file polls this repo and distributes software onto the target Ubuntu machine.

You do not need to run the 'setup-dev-env.sh' as sudo, please run it as your user.

The commands that needs to be run once you have downloaded 'setup-dev-env.sh' are:

1. **./setup-dev-env.sh [DevOps | Development | Tester | Managment]**

Depending on the argument passed in, depends on the configuration that is performed on the local host.

The DevOps argument will keep this Git Repo stored locally in your documents. Any other argument will remove the cloned git repo.

## To Note:
The script can take a long time to run for the first time, depending on your internet connection. If the script appears to hang on an Ansible Task, please give it time to finish.

LinuxBrew & Nifi take the longest time to complete.

This script will run much quicker after its initial run.

## Software that will be installed:
- Python
- Postgres database
- pgAdmin
- Umake
- Atom
- Sublime
- Geany
- Git
- Kdiff
- Nifi
- Maven
- Java Development Kit 8
- Kubernetes
- Java
- Docker
- Drone
- Slack
- Homebrew
- Curl
- Ruby

## To Do:

- Configure Postgress
- Configure Nifi
- Get IntelliJ IDEA Community to install via Umake
- Install Google Chrome
