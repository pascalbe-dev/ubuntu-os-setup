#!/usr/bin/env bash

# see docs: https://minikube.sigs.k8s.io/docs/start/

# download and install minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# download corresponding kubernetes + kubectl
minikube start
minikube kubectl -- get po -A

# stopping minikube again to not use all the resources
minikube stop
