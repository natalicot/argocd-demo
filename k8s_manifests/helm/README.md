# Deploying manifest using helm

## First you need to install helm
https://helm.sh/docs/intro/install/

```sh
helm install app1 -f ./k8s_manifests/helm/app1/values.yml ./k8s_manifests/helm/app-helm-chart
helm install app2 -f ./k8s_manifests/helm/app2/values.yml ./k8s_manifests/helm/app-helm-chart
helm install app3 -f ./k8s_manifests/helm/app3/values.yml ./k8s_manifests/helm/app-helm-chart

helm ls
```