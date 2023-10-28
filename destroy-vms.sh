#!/usr/bin/env bash

echo "Starting destroy playbook"
ansible-playbook destroy.yml -vvv
echo "Finished playbook"
