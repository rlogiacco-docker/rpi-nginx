FROM armhf/alpine

LABEL maintainer "rlogiacco@gmail.com"

ENV WEBROOT /usr/share/nginx/html

RUN \
  apk add --no-cache nginx

VOLUME ["/var/lib/nginx/html"]
EXPOSE 80

CMD nginx -g "daemon off;"
