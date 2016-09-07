FROM ubuntu:14.04
MAINTAINER Alan Craig "acraig94@gmail.com"

RUN apt-get -yqq update && apt-get -yqq install nginx
RUN mkdir -p /var/www/html/website

ADD nginx/static_server.nginx.conf /etc/nginx/nginx.conf
ADD images/kitten.jpg /www/data/kitten.jpg

EXPOSE 80
