<<<<<<< HEAD
FROM phusion/baseimage:latest

RUN apt-get install -y apache2 
=======
FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y apache2

EXPOSE 80

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
>>>>>>> e7442bf22b379ff13e7481e10a66542468a73d64
