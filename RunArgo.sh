#!bin/bash
#ll
# Crete cluster
kind create cluster --config=kind/cluster.yml

# Create apps namespace
kubectl create ns apps


# install argo
helm repo add argo-cd https://argoproj.github.io/argo-helm
helm install argocd argo-cd/argo-cd --namespace argocd --create-namespace --wait

# get admin password
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d

# Port forward to access the UI
kubectl port-forward service/argocd-server -n argocd 8080:443

# login into argo CLI
argocd login localhost:8080

# deploy your first argo application
kubectl create -f ./k8s_manifests/YML/applications/app1.yml
