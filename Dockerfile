FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y apache2 && \
    mkdir -p /var/www/html

COPY . /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
