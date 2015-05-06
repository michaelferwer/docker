#!/bin/sh

docker stop apache
docker rm apache
docker rmi test
docker ps -a
docker images