FROM alissonzam/php7-apache-mbstring
MAINTAINER Alisson Zampietro
COPY 000-default.conf /etc/apache2/sites-available/
CMD chown -R www-data:www-data /var/www/html/ && service apache2 restart && /bin/bash

