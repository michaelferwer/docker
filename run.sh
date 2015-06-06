#!/bin/sh

docker rm -f server_apache
docker rmi apache2

# build image // use --rm to delete intermediaire container
docker build --force-rm=true -f Dockerfile -t apache2 .
# build container and start service apache2    service apache2 start
docker run --name="server_apache" -d -p 8080:80 -v /var/www/html ../jockey -t apache2
docker ps -a

# if container already exists, start and rejoin the container
#docker start --interactive=false --attach=false server_apache
docker exec -i -t server_apache bash
