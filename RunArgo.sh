#!bin/bash

# Crete cluster
kind create cluster --config=kind/cluster.yml


# install argo
helm repo add argo-cd https://argoproj.github.io/argo-helm
