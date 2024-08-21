#!/bin/bash
/etc/init.d/logmein-hamachi start
hamachi login
hamachi set-nick brucon01
hamachi join vilaclara_bruce bruce_vilaclara
/usr/sbin/sshd -D
