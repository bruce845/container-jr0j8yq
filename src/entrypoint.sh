#!/bin/bash
/etc/init.d/logmein-hamachi start
sleep 5
hamachi login
hamachi set-nick brucon01
hamachi join vilaclara_bruce bruce_vilaclara
mkdir -vp /run/sshd
/usr/sbin/sshd -D
