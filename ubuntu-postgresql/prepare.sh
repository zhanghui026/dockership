#!/bin/bash

POSTGRES_VERSION=10.1
POSTGRES_PASSWORD=${POSTGRES_PASSWORD:-$(pwgen -c -n -1 14)}

POSTGRESQL_BIN=/usr/lib/postgresql/${POSTGRES_VERSION}/bin/postgres
POSTGRESQL_CONFIG_FILE=/etc/postgresql/${POSTGRES_VERSION}/main/postgresql.conf
POSTGRESQL_DATA=/var/lib/postgresql/${POSTGRES_VERSION}/main

if [ ! -d "$POSTGRESQL_DATA" ]; then
  echo "${POSTGRES_PASSWORD}" > /var/lib/postgresql/pwfile

  sudo -u postgres -H /usr/lib/postgresql/${POSTGRES_VERSION}/bin/initdb \
    --pgdata=/var/lib/postgresql/${POSTGRES_VERSION}/main --pwfile=/var/lib/postgresql/pwfile \
    --username=postgres --encoding=unicode --auth=trust >/dev/null

  echo "========================================================================"
  echo " postgres password is ${POSTGRES_PASSWORD}"
  echo "========================================================================"
fi