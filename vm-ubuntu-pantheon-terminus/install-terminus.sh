#!/bin/bash
sudo apt-get update
sudo apt-get install -y composer php-xml zip
sudo mkdir /opt/terminus
cd /opt/terminus
sudo curl -O https://raw.githubusercontent.com/pantheon-systems/terminus-installer/master/builds/installer.phar
sudo php installer.phar install
terminus auth:login --machine-token=$1
