# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # config.vm.box = "bento/ubuntu-18.04"
  # config.vm.box = "scottsquatch/code-server"
  config.vm.box = "grokology/ubuntu20.04server64-base"
  config.vm.box_version = "1.0"
  config.vm.hostname = 'latex-vm'

  config.vm.network "forwarded_port", guest:8080, host: 10000
  # config.vm.network "forwarded_port", guest:8443, host: 8443

  config.vm.network "private_network", ip: "192.168.33.55"
end
