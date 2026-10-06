FROM php:8.3-apache

RUN docker-php-ext-install mysqli

COPY src/ /var/www/html/

RUN printf "ServerTokens ProductOnly\nServerSignature Off\n" >> /etc/apache2/apache2.conf \
    && printf "expose_php = Off\n" > /usr/local/etc/php/conf.d/security.ini