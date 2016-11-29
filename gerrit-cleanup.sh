#!/bin/sh
# ctsai-004
# clean up mysql and gerrit so puppet can be run again
set -x; set -a; set -e
service mysql stop
service apache2 stop
apt-get remove -y --purge mysql-server-core-5.5 mysql-server-5.5 mysql-server mysql-common libmysql-java iptables apache2
apt-get autoremove -y
rm -rf /var/lib/mysql
rm -rf /home/gerrit2/*
rm -f /root/.my.cnf
rm -f /etc/ssl/certs/inf-gerrit*.pem /etc/ssl/private/inf-gerrit*.key /etc/ssl/certs/inf-gerrit*.cnf
