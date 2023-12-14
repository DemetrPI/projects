# Project Repository

This repository contains configurations for deploying MySQL and phpMyAdmin on a Kubernetes cluster using Minikube.

## Contents

- [MySQL Deployment](mysql-deployment.yaml): Deployment configuration for MySQL.
- [MySQL Service](mysql-service.yaml): Service configuration for MySQL.
- [phpMyAdmin Deployment](php-myadmin-deploy.yaml): Deployment configuration for phpMyAdmin.
- [phpMyAdmin Service](php-myadmin-service.yaml): Service configuration for phpMyAdmin.
- [MySQL Secret](mysql-secret.yaml): Secret configuration for MySQL credentials.

## Usage

1. Make sure you have Minikube and `kubectl` installed.
2. Start Minikube: `minikube start`.
3. Run the `deploy.sh` script to apply the configurations.

```bash
./deploy.sh
```

## Access phpMyAdmin using the Minikube IP and NodePort.

Important Notes
The MySQL credentials are stored in a Secret (mysql-secret.yaml). Make sure to encode sensitive information using base64.
This setup assumes Minikube, and the service might not get an external IP with LoadBalancer type in Minikube.
Author
[Dmytro Pishchenkov]

License
This project is licensed under the MIT License.

