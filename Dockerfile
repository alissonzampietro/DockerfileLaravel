FROM alissonzam/php7-apache-mbstring
MAINTAINER Alisson Zampietro
COPY 000-default.conf /etc/apache2/sites-available/
RUN chown -R www-data:www-data /var/www/html/
CMD mkdir /var/www/html/public && service apache2 restart && /bin/bash

