#!/bin/bash
whoami
/etc/init.d/logmein-hamachi start
/opt/logmein-hamachi/bin/hamachid
sleep 5
ps aux
hamachi login
hamachi set-nick brucon01
hamachi join vilaclara_bruce bruce_vilaclara
mkdir -vp /run/sshd
/usr/sbin/sshd -D
