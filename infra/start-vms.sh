#!/usr/bin/env bash

# -e = this option makes the bash script exit immediately upon a non zero exit code
# -u = this option treats unset variables as an error and causes the script to error
# if you try to use a variable that has not been set.
set -eu

GREEN=$(tput setaf 2)
RESET=$(tput sgr0)
USER="${USER}"

which ansible

if [$? -ne 0]
  then
    exit 1
  else
    python3 -m pip install --user ansible
fi

echo "${GREEN}Starting main playbook${RESET}"
ansible-playbook main.yml -i inventory/inventory.ini -vvv
echo "${GREEN}Finished playbook${RESET}"
