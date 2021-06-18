#!/bin/bash
args=(
  --name nginx
  --network=host
  #-p 80:80
  #-p 443:443
  --mount type=bind,source=/data/nginx/nginx-conf/nginx.conf,target=/etc/nginx/nginx.conf,readonly
  #--mount type=bind,source=/data/nginx/nginx-conf/enabled,target=/etc/nginx/enabled,readonly
  --mount type=bind,source=/data/nginx/nginx-conf/sites,target=/etc/nginx/sites,readonly
  --mount type=bind,source=/data/nginx/tmp,target=/data/nginx/tmp
  --mount type=bind,source=/var/lib/letsencrypt,target=/var/lib/letsencrypt,readonly
  --mount type=bind,source=/data/nginx/letsencrypt,target=/etc/letsencrypt,readonly
  --mount type=bind,source=/data/service,target=/data/service,readonly
  --mount type=bind,source=/data/upload,target=/data/upload,readonly
#  -it --rm
  -d
  nginx:1.19.7
#  nginx-debug -g 'daemon off;'
)
docker run "${args[@]}"
