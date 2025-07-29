#!/bin/bash
args=(
  --name certbot-cmd
  --mount type=bind,source=/data/nginx/letsencrypt,target=/etc/letsencrypt
  --mount type=bind,source=/var/lib/letsencrypt,target=/var/lib/letsencrypt
  --interactive --tty
  --rm 
  certbot/certbot:v1.12.0
  certificates
)
docker run "${args[@]}" "$@"
