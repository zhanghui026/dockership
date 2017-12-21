#!/bin/bash
set -e
source /bd_build/buildconfig
set -x

## Often used tools.
$minimal_apt_get_install curl less vim-tiny psmisc  wget zip unzip patch less nano iputils-ping net-tools \
  man traceroute bzip2 \
  info \
  lsof \
  tar \
  telnet \
  ntpdate \
  rsync \
  expect \
  logtail \
  python-apt \
  make

ln -s /usr/bin/vim.tiny /usr/bin/vim

## This tool runs a command as another user and sets $HOME.
cp /bd_build/bin/setuser /sbin/setuser



