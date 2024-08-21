#!/bin/bash
whoami
ping -c 4 hamachi-data-center.logmein-gateway.com
#nohup /etc/init.d/logmein-hamachi start
nohup /opt/logmein-hamachi/bin/hamachid
ps aux
mkdir -vp /run/sshd
/usr/sbin/sshd -D
