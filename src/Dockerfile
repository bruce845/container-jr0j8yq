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
RUN apt-get update
RUN apt-get install wget openssh-server net-tools iproute2
RUN wget https://vpn.net/installers/logmein-hamachi_2.1.0.203-1_amd64.deb
RUN dpkg -i logmein-hamachi_2.1.0.203-1_amd64.deb
RUN sed 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config > /tmp/sshd_config
RUN cat /tmp/sshd_config > /etc/ssh/sshd_config
COPY ./entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

