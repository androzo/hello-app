
# Hello App

## Requirements

* Linux or MacOS
* Python 3.x
  * pip3 (`python3 -m pip install --upgrade pip`)
  * flask (`python3 -m pip install flask`)
* AWS cli installed and configured [https://docs.aws.amazon.com/pt_br/cli/latest/userguide/cli-chap-install.html]
* Docker
* Kubernetes
* Terraform
* Minikube

## Deploy the infrastructure
```
terraform init
terraform plan -var-file="dev.tfvars"
terraform apply -var-file="dev.tfvars"

# terraform destroy -var-file="dev.tf"
```

### Run in Docker
```
docker build . -t docker build . -t androzo/hello-app-image
docker push androzo/hello-app-image:latest
docker run -it -p 8080:8080 androzo/hello-app-image
```

### Run locally
```
export FLASK_APP=app.py
export FLASK_ENV=development
flask run
```

### Run in Kubernetes local
If you don't have a k8s cluster on AWS/GCP/Azure/Openshift like myself, you can play around with k8s with minikube

Install
```

```