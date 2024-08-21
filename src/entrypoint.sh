#!/bin/bash
whoami
/etc/init.d/logmein-hamachi start
nohup /opt/logmein-hamachi/bin/hamachid
ps aux
#echo "Executando Hamachi Login"
#hamachi login
#echo "Setando Nick Hamachi"
#hamachi set-nick brucon01
#echo "Entrando na rede Hamachi"
#hamachi join vilaclara_bruce bruce_vilaclara
cat /etc/gai.conf
mkdir -vp /run/sshd
/usr/sbin/sshd -D
