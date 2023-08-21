FROM wordpress:6.3-apache

LABEL org.opencontainers.image.source=https://github.com/thearyadev/multiverse-wordpress
LABEL org.opencontainers.image.description="Docker image for multiverse-wordpress"
LABEL org.opencontainers.image.licenses=MIT

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R 755 /var/www/html/