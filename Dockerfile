FROM nginx

EXPOSE 80
EXPOSE 443

COPY default.conf etc/nginx/conf.d/
COPY website /usr/share/nginx/html

RUN chown -R www-data:www-data /usr/share/nginx/html
RUN chmod ugo-rwx /usr/share/nginx/html
RUN chmod ugo+rx /usr/share/nginx/html
RUN chgrp -R www-data /usr/share/nginx/html