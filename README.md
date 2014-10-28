# Node+Ruby Dev Machine

The Vagrant VM provides a base configuration to support Node and Ruby applications. It uses Puppet to install packages.

## Directions

1. Install [VirtualBox](https://www.virtualbox.org/).
1. Install [Vagrant](https://www.vagrantup.com/).
1. ```git clone git@github.com:locnguyen/noderuby-dev-vagrant.git```
1. ```vagrant up``` will start the CentOS VM.
1. ```vagrant provision``` will provision Node and Ruby and some other packages
1. ```vagrant ssh``` to SSH into the Vagrant VM.
1. ```cd /vagrant``` to change to the directory that is synced with your host operating system.