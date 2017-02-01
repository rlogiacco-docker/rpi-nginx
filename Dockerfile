FROM armhf/alpine

LABEL maintainer "rlogiacco@gmail.com"

ENV WEBROOT /var/www

RUN apk add --no-cache nginx

VOLUME ["/var/www"]
EXPOSE 80

CMD nginx -g "daemon off;"
