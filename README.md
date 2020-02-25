[![CircleCI](https://circleci.com/gh/jatink1984/DEVOPS_MICROSERVICES.svg?style=svg)](https://app.circleci.com/github/jatink1984/DEVOPS_MICROSERVICES/pipelines)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project capabilities 
1. Run app locally and make price prediction
2. Run app inside a docker container
3. Run app inside a Kubernetes cluster

### 1. Setup the Environment To run the app locally 
```
1.Create an environment: virtualenv devops
2.Enable environment: source devops/bin/activate
3.Install dependencies: make install or pip install -r requirements.txt
4.Run app: python app.py
```
### 2. Running app inside a docker container 
```
1. Install docker
2. Run the shell script:  `./run_docker.sh` with app exposed on port 80
3. Make prediction by executing `make_prediction.sh`
```
### 3. Run app inside a Kubernetes cluster
```
1. Install Minikube and virtualbox
2. Execute sh ./run_kubernetes.sh with application exposed on port 80
```
