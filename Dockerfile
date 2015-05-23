FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y apache2

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]