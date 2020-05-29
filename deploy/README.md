<<<<<<< HEAD
# deploy KIX on-premise

## Requirements
* Linux host with Docker service running (single host) or Docker Swarm (Cluster)
* installed docker-compose 
** see https://docs.docker.com/compose/install/

## Configuration
* see file `environment`
* ATTENTION: do not change any configuration you do not know exactly what it does
* basically only two config options are relevant for your specific installation
** BACKEND_PORT (Default: 20000)
** FRONTEND_PORT (Default: 20001)
** SSP_PORT (Default: 20002)
*** PLEASE NOTE: the Self Service Portal is a non-free plugin
* SSL
** if you want to use SSL INSTEAD of non-SSL just do the following
*** comment out everything in proxy/non-ssl.conf
*** uncomment everything in proxy/ssl.conf
*** copy your certificate, key and ca-bundle into the directory proxy/ssl/certs
** if you want to use SSL additionally to non-SSL please do the following
*** uncomment everything in proxy/ssl.conf
*** change the port setting in proxy/ssl.conf from 80 to 443 and from 8080 to 8443 (SSP accordingly from 9080 to 9443)
*** copy your certificate, key and ca-bundle into the directory proxy/ssl/certs
=======
# How to Deploy KIX on-premise

## Prerequisites
- Install Docker on your host system
  - see https://docs.docker.com/install/
- install Docker-Compose on your host system
  - see https://docs.docker.com/compose/install/

## Get Docker Environment Configuration
- create directory for your kix-on-premise installation
  - `cd /opt && mkdir kix-on-premise && cd ./kix-on-premise`
- get initial docker environment setup
  - option a) download and unzip
    - `wget https://download.kixdesk.com/kix-on-premise.tar.gz`
    - `tar -xf ./kix-on-premise.tar.gz`
  - option b) clone from github
    - `cd /opt`
    - `git clone https://github.com/cape-it/kix-on-premise.git`
- change to extracted directory
  - `cd kix-on-premise`

## Configuration (optional)
- see file `environment`
- you may change the default ports under which you connect to KIX
  - `BACKEND_PORT` (Default: 20000)
  - `FRONTEND_PORT` (Default: 20001)
  - `BACKEND_PORT_SSL` (Default: 20443)
  - `FRONTEND_PORT_SSL` (Default: 20444)

### SSL
If you want to use SSL **instead** of non-SSL just do the following
- comment out everything in `proxy/non-ssl.conf`
- uncomment everything in `proxy/ssl.conf`
- copy your certificate, key and ca-bundle into the directory `proxy/ssl/certs`

If you want to use SSL **additionally** to non-SSL please do the following
- uncomment everything in `proxy/ssl.conf`
- change the port setting in `proxy/ssl.conf` from `80` to `443` and from `8080` to `8443`
- copy your certificate, key and ca-bundle into the directory `proxy/ssl/certs`

>>>>>>> 4fd20e7bb9b6b7c4c39380dfe901a35be0760b07

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
