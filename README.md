# How to Deploy KIX on-premise

## Prerequisites
- Install Docker on your host system
  - see https://docs.docker.com/install/
- install Docker-Compose on your host system
  - see https://docs.docker.com/compose/install/

## Get Docker Environment Configuration
- create directory for your kix-on-premise installatio``
  - `cd /opt && mkdir kix-on-premise && cd ./kix-on-premise`
- download and unzip the initial docker environment setup
  - `wget https://download.kixdesk.com/kix-on-premise.tar.gz`
  - `tar -xf ./kix-on-premise.tar.gz`
- change to extracted directory
  - `cd kix-on-premise`

## Configuration (optional)
- see file `environment`
- basically only two config options are relevant for your specific installation
  - `BACKEND_PORT` (Default: 20000)
  - `FRONTEND_PORT` (Default: 20001)
  - `BACKEND_PORT_SSL` (Default: 20443)
  - `FRONTEND_PORT_SSL` (Default: 20444)
-  **ATTENTION: do not change any config setting unless you know exactly what it does.**

## Start KIX
- change to extracted directory
  - `cd /opt/kix-on-premise`
- execute start script
 - `./start.sh`

## Stop KIX
- change to extracted directory
  - `cd /opt/kix-on-premise`
- execute stop script
 - `./stop.sh`

## Update KIX
- change to extracted directory
  - `cd /opt/kix-on-premise`
- execute update script
 - `./update.sh`


# Data Persistence
Following services use volumes created on the first startup to store their persistent data. These volumes will be created in the docker volumes directory (usually `/var/lib/docker/volumes`). If you want to change the location, you have to change the volumes definition in the file `docker-compose.yml`.
- frontend
- backend
- db
