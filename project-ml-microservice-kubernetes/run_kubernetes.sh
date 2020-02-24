#!/usr/bin/env bash
# This is your Docker ID/path
dockerpath=sniizzer/udacity_microservice_project

# Step 2: Run the docker container with kubernetes
kubectl run --image=$dockerpath ml-app --port=80 --labels='app=ml-app'

# List kubernetes pods
kubectl get pods

# while loop to check the pod status
while [ "$(kubectl describe pods ml-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')" != "Running" ]; do
    echo "Waiting for POD status: $(kubectl describe pods ml-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')"
done
echo "POD status is Running"

# Forward the container port 80 to a host 80
kubectl port-forward --address 0.0.0.0 pod/ml-app 80:80

# Shows container logs
kubectl logs -lapp=ml-app --all-containers=true

