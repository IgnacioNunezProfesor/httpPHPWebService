FROM php:7.4-apache

RUN apt update && apt-get install -y \
    curl \
    libzip-dev \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    libcurl4-openssl-dev \    
    pkg-config \
    libssl-dev

COPY 00.apachecommonconfig/virtualhost.conf /etc/apache2/sites-available/virtualhost.conf
COPY 00.apachecommonconfig/apache2.conf /etc/apache2/apache2.conf
COPY 00.apachecommonconfig/php.ini-development /usr/local/etc/php/php.ini
#COPY 00.apachecommonconfig/xdebug.orig.ini /usr/local/etc/php/conf.d/xdebug.orig.ini

#RUN pecl install -f xdebug && docker-php-ext-enable xdebug

#RUN cat /usr/local/etc/php/conf.d/xdebug.orig.ini >> /usr/local/etc/php/conf.d/docker-php-ext-debug.ini \
#    && rm /usr/local/etc/php/conf.d/xdebug.orig.ini \
#    && rm /etc/apache2/sites-available/000-default.conf

RUN apt clean && rm -rf /var/lib/apt/lists/* \
    && docker-php-ext-install pdo pdo_mysql mysqli mbstring exif pcntl bcmath gd ctype fileinfo curl zip intl soap


RUN a2enmod vhost_alias \
    && a2enmod rewrite \
    && a2enmod headers \
    && a2ensite virtualhost.conf

EXPOSE 80 9001
RUN mkdir -p /var/www/moodledata \
    && chmod -R 755 /var/www/html \
    && chmod -R 755 /var/www/moodledata \
    && chown -R www-data:www-data /var/www/html \
    && chown -R www-data:www-data /var/www/moodledata