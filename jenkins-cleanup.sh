#!/bin/sh
apt-get remove --purge jenkins apache2 iptables -y
apt-get autoremove -y
rm -f /etc/ssl/certs/inf-jenkins*.pem /etc/ssl/private/inf-jenkins*.key /etc/ssl/certs/inf-jenkins*.cnf
