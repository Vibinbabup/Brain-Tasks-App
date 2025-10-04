#!/bin/bash
set -e  # Exit immediately if any command fails

echo "Preparing EKS deployment..."

# Ensure kubectl config exists
if [ -z "$KUBECONFIG" ]; then
  export KUBECONFIG=/root/.kube/config
fi

# Optional pre-check: verify kubectl can access the cluster
kubectl config get-contexts
kubectl get nodes
