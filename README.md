# Pre requisite

Make sure you have ansible installed

# Start

```
./start-vms.sh
```

# Destroy

```
./destroy-vms.sh
```


A few notes on ssh'ing or scp'ing into vagrant machine

If you ssh into the vagrant machine by using `vagrant ssh` and run:

`cat ~/.ssh/authroized_keys`

you'll see a list of public authorized public keys 

One is meant to have the private key in hand to be able to ssh or scp or do any shell related activity from one machine to the vagrant machine

So in the case of your local macbook ssh'ing into a locally spun up vagrant machine you could scp something over via:

`scp -i /Users/yournameprobably/.vagrant.d/insecure_private_keys/vagrant.key.rsa -P 2222 ./some_file.txt vagrant@127.0.0.1:/home/vagrant`

To ssh:

`ssh -i /Users/yournameprobably/.vagrant.d/insecure_private_keys/vagrant.key.rsa -p 2222 vagrant@127.0.0.1`