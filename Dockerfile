FROM php:8.2-apache
RUN apt-get update && \
    docker-php-ext-install mysqli pdo pdo_mysql

RUN apt-get install -y git
RUN git clone https://github.com/MahmudulHasanSheshir/Dockerization-of-automation-project.git /var/www/
RUN mv /var/www/Dockerization-of-automation-project/dets/* /var/www/html/

