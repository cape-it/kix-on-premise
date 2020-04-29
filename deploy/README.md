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

## Start KIX
* execute `start.sh`

## Stop KIX
* execute `stop.sh`

## Update to new version
* execute `update.sh`

## Additional Information
### Persistent Data
* the following services use volumes created on the first startup to store their persistent data
** frontend
** backend
** db
* these volumes will be created in the docker volumes directory (usually /var/lib/docker/volumes)
* if you want to change the location, you have to change the volumes definition in the file `docker-compose.yml`
** ATTENTION: please consult our support team if you do not exactly know what you are doing
