#!/bin/sh

docker stop runit
docker rm runit
docker rmi image-runit
docker ps -a
docker images