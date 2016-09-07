FROM ubuntu:14.04
MAINTAINER Alan Craig "acraig94@gmail.com"

RUN apt-get -yqq update && apt-get -yqq install nginx

ADD static_server.nginx.conf /etc/nginx/nginx.conf
ADD kitten.jpg /www/data/

EXPOSE 80

CMD [ "nginx", "-g", "damon off;" ]