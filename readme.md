# Hello App
Simple dockerized application that can be deployed to kubernetes

## Requirements

* Linux or MacOS
* Python 3.x
  * pip3 (`python3 -m pip install --upgrade pip`)
  * flask (`python3 -m pip install flask`)
* AWS credentials configured so you can get your terraform resources created
* Docker
* kubectl
* Terraform
* Minikube

## Terraform - RDS instance

Create two secrets in Secret Manager with the RDS user and password to be used
* rds_pass
* rds_user

```
cd terraform
terraform init
terraform plan -var-file="dev"
terraform apply -var-file="dev"

# terraform destroy -var-file="dev"
```

### Run locally
```
export FLASK_APP=app.py
export FLASK_ENV=development
python app/app.py
```

### Run in Docker
```
docker build . -t docker build . -t androzo/hello-app-image
docker push androzo/hello-app-image:latest
docker run -it -p 8080:8080 androzo/hello-app-image
```

### Run in Kubernetes local

(Optional) Install minikube 
```
chmod +x scripts/install-minikube.sh
scripts/install-minikube.sh

```

Deployment

```
kubectl apply -f k8s

# destroy => kubectl delete -f k8s
```