#!/bin/bash

# Delete existing MySQL Deployment and Service
kubectl delete deployment mysql-deployment
kubectl delete service mysql-service

# Delete existing phpMyAdmin Deployment and Service
kubectl delete deployment phpmyadmin-deployment
kubectl delete service phpmyadmin-service

# Apply MySQL Secret
kubectl apply -f mysql-secret.yaml

# Apply MySQL Deployment and Service
kubectl apply -f mysql-deployment.yaml

# Apply phpMyAdmin Deployment and Service
kubectl apply -f php-myadmin-deploy.yaml

sleep 2

# Check pod status
check_pod_status() {
  local namespace=$1
  local label_selector=$2
  local desired_replicas=$3
  local timeout=$4
  local start_time=$(date +%s)

  while :
  do
    local current_time=$(date +%s)
    local elapsed_time=$((current_time - start_time))

    local running_replicas=$(kubectl get pods -n $namespace -l $label_selector --field-selector=status.phase=Running --no-headers | wc -l | tr -d '[:space:]')

    if [ $running_replicas -eq $desired_replicas ]; then
      echo "All pods are running. All is fine!"
      break
    elif [ $elapsed_time -ge $timeout ]; then
      echo "Timeout reached. Not all pods are running."
      break
    fi

    sleep 1
  done
}

# Check pod status in the default namespace
check_pod_status default app=mysql 1 120
check_pod_status default app=phpmyadmin 1 120


