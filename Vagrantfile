# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.provision "shell", path: "init.sh"

  config.vm.define "docker1" do |d1|
    d1.vm.network "private_network", ip: "192.168.50.10"
    d1.vm.hostname = "docker1.prasenjit.net"

    d1.vm.provider "virtualbox" do |vb|
      vb.name = "docker1"
      # Customize the amount of memory on the VM:
      vb.memory = "2048"
      # Prevent VirtualBox from interfering with host audio stack
      vb.customize ["modifyvm", :id, "--audio", "none"]
    end
    d1.vm.provision "shell", path: "master.sh"
  end

  config.vm.define "docker2" do |d2|
    d2.vm.network "private_network", ip: "192.168.50.11"
    d2.vm.hostname = "docker2.prasenjit.net"

    d2.vm.provider "virtualbox" do |vb|
      vb.name = "docker2"
      # Customize the amount of memory on the VM:
      vb.memory = "2048"
      # Prevent VirtualBox from interfering with host audio stack
      vb.customize ["modifyvm", :id, "--audio", "none"]
    end
    d2.vm.provision "shell", path: "slave.sh"
  end
end
