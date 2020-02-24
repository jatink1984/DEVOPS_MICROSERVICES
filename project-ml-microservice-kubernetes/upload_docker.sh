#!/usr/bin/env bash
# Create dockerpath
dockerpath=sniizzer/udacity_microservice_project

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
# Step 3:
docker login
docker push $dockerpath
# Push image to a docker repository
