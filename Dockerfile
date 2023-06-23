FROM php:8.2-apache
RUN apt-get update && \
    docker-php-ext-install mysqli pdo pdo_mysql

RUN apt-get install -y git

# Clone the repository and move the files to the appropriate directory
RUN git clone https://github.com/MahmudulHasanSheshir/Dockerization-of-automation-project.git /var/www/sheshir/
RUN mv /var/www/sheshir/Dockerization-of-automation-project/httpd/* /var/www/html/

