#!/bin/bash

docker-compose down --remove-orphans
docker-compose pull
for i in `docker ps -a |grep example|awk '{print $1;}'`;do docker rmi $i -f;done
for i in `docker images |grep example|awk '{print $3;}'`;do docker rmi $i -f;done
docker-compose up -d --build
COMPOSE_HTTP_TIMEOUT=600 docker-compose logs --follow
