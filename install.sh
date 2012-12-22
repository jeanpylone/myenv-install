#!/bin/bash

apt-get update
apt-get -y install vim gcc linux-headers-generic
pushd /tmp
tar xzvf "`find /media/|grep VMwareTools|grep tar.gz`"

/tmp/vmware-tools-contrib/vmware-install.pl

add-apt-repository -y ppa:mercurial-ppa/releases
add-apt-repository -y ppa:tortoisehg-ppa/releases
apt-get update
apt-get -y install mercurial kdiff3 tortoisehg

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add - 
echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
apt-get update 
apt-get -y install google-chrome-unstable


popd
