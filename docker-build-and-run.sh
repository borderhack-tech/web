#!/bin/bash

# This script performs the following:
#  1. build the docker image
#  2. run the image container

set -ex

imageId=borderhack-tech-web
containerId=borderhack-tech-web

configFile=local.conf
hostPort=80

# Parameter $1 is the config file name to use e.g. local.conf, test.conf, live.conf
if [[ "$1" != "" ]]; then
  configFile=$1
fi

# Parameter $2 is the port number to run the container on
if [[ "$2" != "" ]]; then
  hostPort=$2
fi

docker kill ${containerId} || true;
docker rm ${containerId} || true;
docker rmi ${imageId} || true;

docker build -t ${imageId} .

docker run --name ${containerId} -d \
    -p ${hostPort}:8080 \
    ${imageId}

echo "Conatiner ${containerId} running on port: ${hostPort}"
