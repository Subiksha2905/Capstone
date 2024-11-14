#!/bin/bash
docker-compose up -d
CONTAINER_NAME='guviproj'
x=$(docker ps -q -f status=running -f name=$CONTAINER_NAME)
if [[ -n "$x" ]]; then
  echo 'Container exists'
  docker push subiksha29/prod
  docker push subiksha29/dev
else
  echo 'No container image'
fi
