#!/bin/bash

# import environment for docker-compose
source ./environment
export $(cut -d= -f1 ./environment | egrep '^[A-Z]')

docker-compose -p ${NAME} pull 
docker-compose -p ${NAME} up -d $@
docker-compose -p ${NAME} restart proxy
