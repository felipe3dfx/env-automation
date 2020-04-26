#!/usr/bin/env bash
set -e

sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible git -y

git clone https://github.com/felipe3dfx/env-automation
cd ./env-automation
make install
echo "Done."