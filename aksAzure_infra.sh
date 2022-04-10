#!bin/sh
az provider register -n Microsoft.ContainerService
az  group create  --name  aks-rg-test   --location eastus2
az aks create --resource-group acr-rg-test --name akscluster  --location eastus  --node-count 2 --generate-ssh-keys
az aks get-credentials --resource-group=aks-rg-test --name=akscluster
kubectl get nodes -o wide
