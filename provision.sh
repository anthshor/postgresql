#!/bin/bash

sudo apt-get update
sudo apt-get -y install postgresql postgresql-contrib pgadmin3

sudo -u postgres psql postgres << EOF
\password postgres 
oracle
oracle
\q
EOF

sudo -u postgres createdb mydb

sudo -u postgres psql << EOF
CREATE EXTENSION adminpack;
\q
EOF

sudo apt-get install -y xfce4 tightvncserver
sed -i 's/peer/md5/' /etc/postgresql/9.1/main/pg_hba.conf
sudo /etc/init.d/postgresql reload
