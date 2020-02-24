#!/usr/bin/env bash
image_name=sniizzer/udacity_microservice_project
echo $image_name
#build docker image
docker build -t $image_name -f Dockerfile .
docker images
# Run flask app
docker run -ti --rm -p 80:80 $image_name