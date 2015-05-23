#!/bin/sh

# build image
docker build --force-rm=true -t image-runit .
#

# build container
docker run -p 8080:80 --name="runit" -d -t image-runit 
# display all running containers
docker ps
# rejoin a container
#docker exec -i -t runit bash

# if container already exists, start and rejoin the container
#docker start --interactive=false --attach=false runit
#docker exec -i -t runit bash