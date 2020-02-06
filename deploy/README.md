# deploy KIX on-premise

## Requirements
* Linux host with Docker service running (single host) or Docker Swarm (Cluster)
* installed docker-compose 
** see https://docs.docker.com/compose/install/

## Configuration
* see file `environment`
* basically only two config options are relevant for your specific installation
** BACKEND_PORT (Default: 20000)
** FRONTEND_PORT (Default: 20001)
* ATTENTION: do not change any configuration you do not know exactly what it does

## Start KIX
* execute `start.sh`

## Stop KIX
* execute `stop.sh`

## Additional Information
### Persistent Data
* the following services use volumes created on the first startup to store their persistent data
** frontend
** backend
** db
* those volumes will be created in the docker volumes directory (usually /var/lib/docker/volumes)
* if you want to change the location you have to change the volumes definition in the file `docker-compose.yml`
** ATTENTION: please consult our support team if you do not exactly know what you are doing
