FROM wordpress:6.3-apache

LABEL org.opencontainers.image.source=https://github.com/thearyadev/multiverse-wordpress
LABEL org.opencontainers.image.description="Docker image for multiverse-wordpress"
LABEL org.opencontainers.image.licenses=MIT

COPY wp-content /var/www/html/wp-content
COPY wp-config.php /var/www/html/wp-config.php

ENV WORDPRESS_DB_HOST="containers-us-west-97.railway.app:5798"
ENV WORDPRESS_DB_USER="root"
ENV WORDPRESS_DB_PASSWORD="q2prNUrn5NgNc2aApSGm"
ENV WORDPRESS_DB_NAME="railway"
# ENV PUBLIC_URI="http://192.168.50.139:4445"

RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R 755 /var/www/html/