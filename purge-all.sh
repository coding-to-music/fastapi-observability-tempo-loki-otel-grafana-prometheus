#!/bin/bash

# docker ps -aq

docker-compose down --volumes
docker stop $(docker ps -aq)
docker rm $(docker ps -aq) 
# docker image prune -a
docker volume prune -f
