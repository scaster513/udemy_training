#!/bin/bash	
echo "================================"
systemctl status ntpd
systemctl status sshd
systemctl status snmpd
echo "================================"
sudo yum install cowsay -y
yum info cowsay
echo "================================"
journalctl -n