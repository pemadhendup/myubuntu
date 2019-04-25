FROM ubuntu:14.04
MAINTAINER PD
WORKDIR /var
RUN apt-get update -y && apt-get -y install apache2
EXPOSE 80
COPY . /var/www/html/
ENTRYPOINT ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
