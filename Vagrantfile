# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "private_network", ip: "192.168.33.12"


  config.vm.synced_folder ".", "/app_repo"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "dapp_demo-symfony_app"
    vb.memory = "2048"
  end

  config.vm.provision :shell, path: "vagrant-bootstrap.sh"
end
