#!/bin/bash
whoami
/etc/init.d/logmein-hamachi start
/opt/logmein-hamachi/bin/hamachid
ps aux
echo "Executando Hamachi Login"
hamachi login
echo "Setando Nick Hamachi"
hamachi set-nick brucon01
echo "Entrando na rede Hamachi"
hamachi join vilaclara_bruce bruce_vilaclara
mkdir -vp /run/sshd
/usr/sbin/sshd -D
