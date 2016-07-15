#!/bin/bash
gcloud config set project hopeful-list-135723
gcloud config set compute/zone us-central1-f
gcloud config set container/cluster spin-kube
gcloud container clusters describe spin-kube --zone us-central1-f

kubectl run sprokest-node --image=gcr.io/hopeful-list-135723/sprokest:1.0 --port=8080
kubectl expose deployment sprokest-node --type="LoadBalancer" --port 80
kubectl get service sprokest-node
