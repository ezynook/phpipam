FROM ghcr.io/ezynook/phpipam/phpipam:1.6
MAINTAINER Pasit Y.

RUN docker-php-ext-install pcntl
RUN rm -f /var/www/html/app/footer.php
COPY ./src/index.php /var/www/html/index.php
COPY ./src/user-menu.php /var/www/html/app/sections/user-menu.php
COPY ./phpipam-agent /var/www/html/phpipam-agent