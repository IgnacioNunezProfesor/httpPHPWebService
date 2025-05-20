FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf
# Install PHP-FPM
RUN apk add --no-cache php-fpm php-mysqli php-json php-session

# Copy PHP-FPM config
COPY php-fpm.conf /etc/php7/php-fpm.conf

# Start PHP-FPM in the background
RUN mkdir -p /run/php
CMD php-fpm7 -D && nginx -g 'daemon off;'
# Copy custom nginx config for PHP-FPM
COPY 00.nginxcommomconfig/nginxphp.conf /etc/nginx/conf.d/default.conf

# Expose HTTP port
EXPOSE 80