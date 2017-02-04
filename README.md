rpi-nginx
==============

[![](https://images.microbadger.com/badges/image/rlogiacco/rpi-nginx.svg)](https://microbadger.com/images/rlogiacco/rpi-nginx) [![](https://images.microbadger.com/badges/version/rlogiacco/rpi-nginx.svg)](https://microbadger.com/images/rlogiacco/rpi-nginx)

Based on Alpine for ARM this image delivers a fully configured and ready to run instance of [InlineCMS](http://inlinecms.com/) based on Apache HTTP Server and PHP5.


# Description
You should run this container on the background and mount a volume to make the CMS content persistent.

Includes:

 - Apache HTTP Server
 - PHP5
 - InlineCMS
 
# Volumes
There are no volumes exported but you can remap `/usr/share/nginx/html` to a volume where you can provide HTML content.

The default configuration can be easily overriden replacing `/etc/nginx/conf.d/default.conf` with your configuration file ([default content](https://github.com/rlogiacco-docker/rpi-nginx/blob/master/default.conf)).

If you need to override the global configuration then replace `/etc/nginx/nginx.conf` with your alternative ([default content](https://github.com/rlogiacco-docker/rpi-nginx/blob/master/nginx.conf)).

# Ports

 - 80: default HTTP port

# Run the container using docker
To get the container up and running:
 
```
sudo docker run -d -p 80:80 -v htdocs:/usr/share/nginx/html -d rlogiacco/rpi-nginx
```


# Links

 - [Source Repository](https://github.com/rlogiacco-docker/rpi-nginx)
 - [Dockerfile](https://github.com/rlogiacco-docker/rpi-nginx/blob/master/Dockerfile)
 - [DockerHub](https://registry.hub.docker.com/u/rlogiacco/rpi-nginx/)
 - [Default Configuration](https://github.com/rlogiacco-docker/rpi-nginx/blob/master/default.conf)
 - [Global Configuration](https://github.com/rlogiacco-docker/rpi-nginx/blob/master/nginx.conf)
 