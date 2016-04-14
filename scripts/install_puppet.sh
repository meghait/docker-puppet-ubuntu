#!/usr/bin/env bash

apt-get install --yes lsb-release
DISTRIB_CODENAME=$(lsb_release --codename --short)
DEB="puppetlabs-release-${DISTRIB_CODENAME}.deb"
# Assume that this file's existence means we have the Puppet Labs repo added.
DEB_PROVIDES="/etc/apt/sources.list.d/puppetlabs.list"

if [ ! -e $DEB_PROVIDES ]
then
  cd /tmp
  wget -q http://apt.puppetlabs.com/$DEB
  dpkg -i $DEB
fi
apt-get update
apt-get install --yes puppet
