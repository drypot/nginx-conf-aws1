#!/bin/bash
args=(
  --name certbot-new
  -it --rm 
  --mount type=bind,source=/data/nginx/letsencrypt,target=/etc/letsencrypt
  --mount type=bind,source=/var/lib/letsencrypt,target=/var/lib/letsencrypt
  certbot/certbot:v1.12.0
  certonly
  --webroot
  -w /var/lib/letsencrypt/
)
docker run "${args[@]}" "$@"
