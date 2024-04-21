# Things to note:

If you don't have Ansible, this script WILL install Ansible on your machine.

Ansible is awesome anyway so you should have it.

# Pre requisite

Make sure you have vagrant installed

# Start

```
./deploy-infra.sh
```

# Destroy

```
./destroy-vms.sh
```

DB setup

sudo apt update
sudo apt install postgresql postgresql-contrib
sudo -u postgres createuser --interactive
sudo -u postgres createuser --superuser nima