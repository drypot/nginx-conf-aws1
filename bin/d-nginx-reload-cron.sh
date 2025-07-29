#!/bin/bash
arg=(
#  --interactive --tty
  nginx 
  nginx -s reload
)
docker exec "${arg[@]}"
