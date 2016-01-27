#!/usr/bin/env bash

echo "MySql INSTALL"
debconf-set-selections <<< 'mysql-server mysql-server/root_password password 123456'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password 123456'
sudo apt-get update
sudo apt-get install -y mysql-server
