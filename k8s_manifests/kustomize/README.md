# Deploying manifest using kustomize

## Starting from version 1.14 kubectl supports the management of Kubernetes objects using a kustomization file.

```sh
    kubectl apply -k ./k8s_manifests/kustomize/app1
    kubectl apply -k ./k8s_manifests/kustomize/app2
    kubectl apply -k ./k8s_manifests/kustomize/app3
```