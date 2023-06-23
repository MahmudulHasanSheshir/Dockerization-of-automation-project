FROM php:8.2-apache

# Update package repositories and install necessary dependencies
RUN apt-get update && \
    apt-get install -y git

# Install PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Clone the repository and move the files to the appropriate directory
RUN git clone https://github.com/MahmudulHasanSheshir/Dockerization-of-automation-project.git /var/www/sheshir/
RUN mv /var/www/sheshir/Dockerization-of-automation-project/httpd/* /var/www/html/

