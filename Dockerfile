FROM phusion/baseimage:latest

RUN apt-get update ; apt-get install -y apache2


RUN mkdir /etc/sv/apache2 ; mkdir -p /opt/apache2/logs
COPY ./conf/etc/sv/apache2 /etc/sv/apache2
RUN chmod +x /etc/sv/apache2/run

RUN cd /etc/service/ ; ln -s /etc/sv/apache2 apache2
