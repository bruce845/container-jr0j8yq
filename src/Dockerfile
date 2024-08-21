# syntax=docker/dockerfile:1
#FROM python:3-alpine
#ENV PYTHONUNBUFFERED=1
#WORKDIR /usr/src/app
#COPY requirements.txt /usr/src/app/
#RUN pip install -U -r requirements.txt
#COPY ./web /usr/src/app/
#COPY ./entrypoint.sh /
#ENTRYPOINT ["/entrypoint.sh"]

FROM ubuntu:latest
RUN apt-get -y update
RUN apt-get -y install wget openssh-server net-tools iproute2 iputils-ping
RUN wget https://vpn.net/installers/logmein-hamachi_2.1.0.203-1_amd64.deb
COPY ./gai.conf /
RUN cat /gai.conf > /etc/gai.conf
COPY ./hamachi.sh /
RUN chmod +x /hamachi.sh
RUN /bin/bash /hamachi.sh
RUN sed 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config > /tmp/sshd_config
RUN cat /tmp/sshd_config > /etc/ssh/sshd_config
RUN echo 'root:root' | chpasswd
RUN echo "NOCACHE"
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

