#!/bin/bash
dpkg -i logmein-hamachi_2.1.0.203-1_amd64.deb
ping -c 4 hamachi-data-center.logmein-gateway.com
/etc/init.d/logmein-hamachi start
nohup /opt/logmein-hamachi/bin/hamachid
hamachi login
hamachi set-nick brucon01
sleep 5
hamachi join vilaclara_bruce bruce_vilaclara
