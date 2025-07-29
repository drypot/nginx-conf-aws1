#!/bin/bash
arg=(
  --interactive --tty
  nginx
  bash
)
docker exec "${arg[@]}"
