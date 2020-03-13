#!/bin/bash

# import environment for docker-compose
source ./environment
export $(cut -d= -f1 ./environment | egrep '^[A-Z]')

docker-compose -p kix pull 
docker-compose -p kix up -d $@
docker-compose -p kix restart proxy
