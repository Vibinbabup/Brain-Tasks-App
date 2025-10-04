#!/bin/bash
set -e

echo "Verifying deployment..."
kubectl rollout status deployment/brain-tasks-app -n default
kubectl get pods -n default
