#!/bin/sh

# build image // use --rm to delete intermediaire container
docker build -f Dockerfile -t test .
# build container and start service apache2    service apache2 start
docker run --name="apache" -d -p 8080:80 -t test 
docker ps -a

# rejoin a container
# docker exec -i -t apache bash