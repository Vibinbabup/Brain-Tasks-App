#!/bin/bash
set -e

echo "Deploying Brain-Tasks-App to EKS cluster..."

# Replace these with your EKS cluster & namespace
CLUSTER_NAME="brain-tasks-cluster"
NAMESPACE="default"
DEPLOYMENT_FILE="deployment.yaml"
SERVICE_FILE="service.yaml"

# Apply Kubernetes manifests
kubectl apply -f $DEPLOYMENT_FILE -n $NAMESPACE
kubectl apply -f $SERVICE_FILE -n $NAMESPACE

# Update deployment image to latest ECR image if using CodeBuild env variables
IMAGE_URI="${ECR_REPOSITORY_URI}:${IMAGE_TAG}"
kubectl set image deployment/brain-tasks-app brain-tasks-container=$IMAGE_URI -n $NAMESPACE

echo "Deployment completed."
