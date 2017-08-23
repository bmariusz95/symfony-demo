#!/usr/bin/env bash

locale-gen en_US.UTF-8
echo 'LC_ALL="en_US.UTF-8"' >> /etc/environment

# Script provisions Docker with get.docker.io
# Then installs ruby 2.3 system wide from brightbox
apt-add-repository ppa:brightbox/ruby-ng -y
apt-get update -y 
apt-get install ruby2.3 ruby2.3-dev libruby2.3 cmake pkg-config git -y

# Docker
if [ ! $(which docker) ]
then
  curl -Ls https://get.docker.com/ | sh
fi

usermod -aG docker vagrant

# dapp
curl -Ls https://raw.githubusercontent.com/flant/dapp/0.14.2/install.sh | bash

