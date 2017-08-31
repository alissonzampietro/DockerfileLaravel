FROM alissonzam/php7-apache-mbstring
MAINTAINER Alisson Zampietro
COPY 000-default.conf /etc/apache2/sites-available/
RUN usermod -u 1000 www-data
RUN usermod -G staff www-data
CMD chown -R www-data:www-data /var/www/html/ && service apache2 restart && /bin/bash

