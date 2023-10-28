#!/usr/bin/env bash

set -eu

USER="${USER}"

echo "Starting main playbook"
ansible-playbook main.yml -i inventory/inventory.ini -vvv
echo "Finished playbook"
