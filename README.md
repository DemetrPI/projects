# Project Repository

This repository contains configurations for deploying MySQL and phpMyAdmin on a Kubernetes cluster using Minikube.

## Contents

- [Deploy.sh](deploy.sh): Shell file for deployment MySQL
- [MySQL Deployment](mysql-deployment.yaml): Deployment and service configuration for MySQL.
- [MySQL Secret](mysql-secret.yaml): Secret configuration for MySQL credentials.
- [phpMyAdmin Deployment](php-myadmin-deploy.yaml): Deployment and service configuration for phpMyAdmin.
- [MongoDB Deployment](mongodb-deploy.yaml): Deployment and service configuration for MongoDB.
- [MongoDB Secret](mongodb-secret.yaml): Secret configuration for MongoDB credentials.
- [MongoDB Configmap](mongo-configmap.yaml): Configmap for MongoDB+Mongo Express.
- [Mongo Express Deployment](mongo-express.yaml): Deployment and service configuration for Mongo-Express.
- [NGINX deployment](nginx-deployment.yaml): NGINX deployment
- [NGINX service](nginx-service.yaml): NGINX service

## Usage

1. Make sure you have Minikube and `kubectl` installed.
2. Start Minikube: `minikube start`.
3. Run the `deploy.sh` script to apply the configurations.

```bash
./deploy.sh
```

## Access phpMyAdmin using the Minikube IP and NodePort.

**Important Notes**
The MySQL credentials are stored in a Secret (mysql-secret.yaml). Make sure to encode sensitive information using base64.
This setup assumes Minikube, and the service might not get an external IP with LoadBalancer type in Minikube.

## Author
Dmytro Pishchenkov

**License**
This project is licensed under the MIT License.

