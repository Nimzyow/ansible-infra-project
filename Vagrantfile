VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # Use the same key for each machine
  config.ssh.insert_key = false

  config.vm.define "webserver" do |webserver|
    webserver.vm.box = "centos/8"
    webserver.vm.network "forwarded_port", guest:22, host: 2230
    webserver.vm.network "forwarded_port", guest:80, host: 8080
    webserver.vm.network "private_network", ip: "10.2.2.200"
  end
  # config.vm.define "vagrant2" do |vagrant2|
  #   vagrant2.vm.box = "ubuntu/focal64"
  #   vagrant2.vm.network "forwarded_port", guest:22, host: 2231
  #   vagrant2.vm.network "private_network", ip: "10.2.2.201"
  # end
  # config.vm.define "vagrant3" do |vagrant3|
  #   vagrant3.vm.box = "ubuntu/focal64"
  #   vagrant3.vm.network "forwarded_port", guest:22, host: 2232
  #   vagrant3.vm.network "private_network", ip: "10.2.2.202"
  # end
end