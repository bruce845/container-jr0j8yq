#!/bin/bash
dpkg -i logmein-hamachi_2.1.0.203-1_amd64.deb
/etc/init.d/logmein-hamachi start
nohup /opt/logmein-hamachi/bin/hamachi
hamachi login
hamachi set-nick brucon01
hamachi join vilaclara_bruce bruce_vilaclara
