FROM php:8.2-apache
RUN apt-get update && \
    docker-php-ext-install mysqli pdo pdo_mysql

RUN apt-get install -y git
RUN git clone https://github.com/MahmudulHasanSheshir/automation_project.git /var/www/
RUN sed -i 's/172.20.1.101/mysqldb/g' /var/www/html/index.php
