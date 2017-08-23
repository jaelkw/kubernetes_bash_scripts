#!/bin/bash

apt-get update && apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add

apt-get update

# Uncomment if don't yet have docker
apt-get install -y docker.io

apt-get install -y kubelet kubeadm kubectl kubernetes-cni
