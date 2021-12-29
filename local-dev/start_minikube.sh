#!/bin/bash 

minikube start -p "minikube" --driver=hyperv   --docker-env NO_PROXY=$NO_PROXY --alsologtostderr -v=8 --cpus=4 --memory='8000mb'
