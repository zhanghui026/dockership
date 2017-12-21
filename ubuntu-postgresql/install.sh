#!/bin/sh
# set -e
# source /bd_build/buildconfig
# set -x

echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" > /etc/apt/sources.list.d/pgdg.list

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

apt-get update

apt-get -y -q install postgresql-9.6 postgresql-client-9.6 postgresql-contrib-9.6