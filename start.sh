#!/bin/bash

docker rm -f nginx-www-server
docker run --rm --name nginx-www-server -p 80:80 -p 443:443 -v $PWD/conf.d:/etc/nginx/conf.d:ro -v $PWD/docs:/usr/share/nginx/html:ro -d nginx
