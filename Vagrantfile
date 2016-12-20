# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision :shell, path: "bootstrap.sh"
  # digits
  config.vm.network :forwarded_port, guest: 80, host: 4567
  # jupyter notebook
  config.vm.network :forwarded_port, guest: 8888, host: 8888
  config.vm.provision "file", 
    source: "jupyter_notebook_config.py", 
    destination: ".jupyter/jupyter_notebook_config.py"
end
