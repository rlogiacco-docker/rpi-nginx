rpi-nginx
==============

[![](https://images.microbadger.com/badges/image/rlogiacco/rpi-nginx.svg)](https://microbadger.com/images/rlogiacco/rpi-nginx) [![](https://images.microbadger.com/badges/version/rlogiacco/rpi-nginx.svg)](https://microbadger.com/images/rlogiacco/rpi-nginx)

Based on Alpine for ARM this image delivers a running instance of [Nginx](https://nginx.org/en/) with most of core modules enabled.

[![](https://nginx.org/nginx.png)](https://nginx.org/en/)

# Description
You should run this container on the background and mount a volume to provide your HTML content.

Includes modules:

 - http_ssl_module
 - http_realip_module
 - http_addition_module
 - http_sub_module
 - http_dav_module
 - http_flv_module
 - http_mp4_module
 - http_gunzip_module
 - http_gzip_static_module
 - http_random_index_module
 - http_secure_link_module
 - http_stub_status_module
 - http_auth_request_module
 - threads
 - stream
 - stream_ssl_module
 - stream_ssl_preread_module
 - stream_realip_module
 - http_slice_module
 - compat
 - file-aio
 - http_v2_module
 
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