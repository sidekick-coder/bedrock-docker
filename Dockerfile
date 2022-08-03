FROM php:7.4.30-apache

ENV APACHE_DOCUMENT_ROOT=/var/www/html/web

RUN apt-get update && apt-get upgrade -y

RUN docker-php-ext-install mysqli

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

EXPOSE 80
