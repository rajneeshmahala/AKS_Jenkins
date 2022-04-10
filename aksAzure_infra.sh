#!bin/sh
az provider register -n Microsoft.ContainerService
az  group create  --name  aks-rg   --location eastus2
az aks create --resource-group acr-rg --name akscluster  --location eastus  --node-count 2 --generate-ssh-keys
sudo az aks install-cli
az aks get-credentials --resource-group=aks-rg --name=akscluster
kubectl get nodes -o wide