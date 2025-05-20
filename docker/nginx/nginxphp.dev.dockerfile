FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Copy custom nginx config for PHP-FPM
COPY 00.nginxcommonnginxphp.conf /etc/nginx/conf.d/default.conf

# Expose HTTP port
EXPOSE 80