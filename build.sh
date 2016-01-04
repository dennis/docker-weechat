#!/bin/sh

set -x

DEBIAN_FRONTEND=noninteractive

echo 'deb http://weechat.org/debian jessie main' > /etc/apt/sources.list.d/weechat.list
apt-key adv --keyserver keys.gnupg.net --recv-keys 11E9DE8848F2B65222AA75B8D1820DB22A11534E

apt-get -qy --force-yes update
apt-get -qy --force-yes dist-upgrade
apt-get -qy --force-yes upgrade

#libencode-perl is needed by buffers.pl
apt-get -qy --force-yes install weechat-curses weechat-plugins libencode-perl
apt-get -qy autoremove

rm -rf /tmp/* /var/tmp/*
apt-get -qy clean
rm -rf /var/lib/apt/lists/*

adduser weechat --home /weechat --no-create-home --disabled-password --gecos ''
mkdir /weechat
chown weechat:weechat /weechat
