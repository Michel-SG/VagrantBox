# -*- mode: ruby -*-
# vi: set ft=ruby :
RAM = 2048
CPU = 2
IP = "10.0.0.10"
Vagrant.configure("2") do |config|
  config.vm.box = "dirane/nginx"
  config.vm.provision "shell", inline: "echo Hello"
  config.vm.synced_folder "~/Vagrant_Lab/labvagrant/", "/usr/share/nginx/html"
  config.vm.hostname = "michel"
  config.vm.network "private_network", ip: IP 
  config.vm.provider "virtualbox" do |v|
    v.memory = RAM
    v.cpus = CPU
  end
end
