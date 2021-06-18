#!/bin/bash
args=(
  --name certbot-cmd
  -it --rm 
  --mount type=bind,source=/data/nginx/letsencrypt,target=/etc/letsencrypt
  --mount type=bind,source=/var/lib/letsencrypt,target=/var/lib/letsencrypt
  certbot/certbot:v1.12.0
)
docker run "${args[@]}" "$@"
