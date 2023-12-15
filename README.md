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
- [NGINX service](nginx-service.yaml): NGINX service.
- [Ingress for phpmyadmin](phpmyadmin-ingress.yaml): Ingress for accessing phpmyadmin dashboard.

## Usage

1. Make sure you have Minikube and `kubectl` installed.
2. Start Minikube: `minikube start`.
3. Run the `deploy.sh` script to apply the configurations.

```bash
./deploy.sh
```

## Access phpMyAdmin using Ingress
To access phpMyAdmin using external IP or host in Minikube, first run `minikube addons enable ingress` to enable Ingress in Minikube.
If using docker, you need to create a tunnel (https://minikube.sigs.k8s.io/docs/commands/tunnel/#synopsis) `minikube tunnel` to get access to exposed services using external IP or host. Docker uses 127.0.0.1 by default. 


**Important Notes**
The MySQL credentials are stored in a Secret (mysql-secret.yaml). Make sure to encode sensitive information using base64.
This setup assumes Minikube, and the service might not get an external IP with LoadBalancer type in Minikube.

## Author
Dmytro Pishchenkov

**License**
This project is licensed under the MIT License.

