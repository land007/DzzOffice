FROM php:7.3.8-apache-stretch

ENV VERSION 2.02

RUN apt-get update && apt-get install -y libzip-dev libfreetype6-dev \
  && docker-php-ext-install mysqli \
  && docker-php-ext-install gd \
  && docker-php-ext-install zip

RUN curl -o /tmp/dzzoffice-${VERSION}.tar.gz https://codeload.github.com/zyx0814/dzzoffice/tar.gz/${VERSION} \
  && tar -xzvf /tmp/dzzoffice-${VERSION}.tar.gz -C /tmp \
  && rm -rf /tmp/dzzoffice-${VERSION}.tar.gz /tmp/dzzoffice-${VERSION}/*.md \
  && mv /tmp/dzzoffice-${VERSION}/* /var/www/html/

RUN chown -R www-data:www-data /var/www/html/
