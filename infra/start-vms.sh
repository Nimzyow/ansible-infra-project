#!/usr/bin/env bash

# -e = this option makes the bash script exit immediately upon a non zero exit code
# -u = this option treats unset variables as an error and causes the script to error
# if you try to use a variable that has not been set.
set -eu

GREEN=$(tput setaf 2)
RESET=$(tput sgr0)
USER="${USER}"

which ansible
ansible_installed_status="$($?)"
which vagrant
vagrant_installed_status="$($?)"

if [ansible_installed_status -ne 0]
  then
    echo "Please install Ansible\n\n"
    echo "Installation instructions\n"
    echo "python3 -m pip install --user ansible"
    exit 1
fi

if [vagrant_installed_status -ne 0]
  then
    echo "Please install Vagrant\n\n"
    echo "Installation instructions:\n"
    echo "brew tap hashicorp/tap\nbrew install hashicorp/tap/hashicorp-vagrant"
    exit 1
fi

echo "${GREEN}Starting main playbook${RESET}"
ansible-playbook main.yml -i inventory/inventory.ini -vvv
echo "${GREEN}Finished playbook${RESET}"
