#!/bin/bash
whoami
nohup /etc/init.d/logmein-hamachi start
ping -c 4 hamachi-data-center.logmein-gateway.com
sleep 10
ps aux
mkdir -vp /run/sshd
/usr/sbin/sshd -D
