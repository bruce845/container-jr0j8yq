#!/bin/bash
whoami
/etc/init.d/logmein-hamachi start
mkdir -vp /run/sshd
/usr/sbin/sshd -D
