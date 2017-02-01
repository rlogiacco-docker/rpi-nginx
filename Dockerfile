FROM armhf/alpine

LABEL maintainer "rlogiacco@gmail.com"

ENV WEBROOT /srv/html

RUN \
  apk add --no-cache nginx

VOLUME ["/srv/html"]
EXPOSE 80

CMD nginx -g "daemon off;"
