#!/usr/bin/env bash

# -e = this option makes the bash script exit immediately upon a non zero exit code
# -u = this option treats unset variables as an error and causes the script to error
# if you try to use a variable that has not been set.
set -eu

USER="${USER}"

echo "Starting main playbook"
ansible-playbook main.yml -i inventory/inventory.ini -vvv
echo "Finished playbook"
