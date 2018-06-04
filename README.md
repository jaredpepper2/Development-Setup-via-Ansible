# Development-Setup-via-Ansible
Setup a development environment on Ubuntu with Ansible.

## Steps
You only need to download and run the 'setup-dev-env.sh' file. You do not need to download any other file. The file polls this repo and distributes software onto the target Ubuntu machine.

You do not need to run the 'setup-dev-env.sh' as sudo, please run it as your user.

The commands that needs to be run once you have downloaded 'setup-dev-env.sh' are:

1. **./setup-dev-env.sh**

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

- Force development machines to poll this repo on a cycle
- Configure Postgress
- Configure Nifi
- Get IntelliJ IDEA Community to install via Umake
- Install Google Chrome
