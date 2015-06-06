FROM phusion/baseimage:latest

#RUN apt-get update ; apt-get install -y apache2


RUN mkdir /etc/sv/test ; mkdir -p /opt/test/logs ; adduser --system --no-create-home foo
COPY ./conf/etc/sv/test /etc/sv/test
COPY ./conf/test.sh /opt/test/test.sh
RUN chown -R foo:root /opt/test ; chmod +x /opt/test/test.sh /etc/sv/test/run /etc/sv/test/log/run

RUN cd /etc/service/ ; ln -s /etc/sv/test test

RUN sv start test
