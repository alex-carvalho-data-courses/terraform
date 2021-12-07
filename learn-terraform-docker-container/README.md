# HashiCorp >> Terraform >> Get Started - Docker  #

## What is this repository for? ##

### Quick summary  

Repository to follow the introductory [Terraform](https://www.hashicorp.com/products/terraform) courses from [HashiCorp](https://www.hashicorp.com/):  

[HashiCorp >> Terraform >> Get Started - Docker](https://learn.hashicorp.com/collections/terraform/docker-get-started)

## How do I get set up? (ubuntu) ###

### Summary of set up

1. Install Terraform CLI
2. Install Docker Engine for Linux
3. Initialize Terraform project

### Dependencies

- Terraform CLI (0.14.9+) installed. 
- Docker Engine for Linux

### Configuration

#### 1. Install Terraform CLI

Described in the README.md in this project's root folder.

#### 2. Install Docker Engine for Linux

[install Docker engine](https://docs.docker.com/engine/install/)

#### 3. Initialize Terraform project

##### 3.1. Go to terraform configuration file's folder

The folder that contains the *.tf file

```shell
cd ../learn-terraform-docker-container
```

##### 3.2. Specify the environment

Create a configuration file called `main.tf` and place the infrastructure there.  

[Docker provider](https://registry.terraform.io/providers/kreuzwerker/docker/latest)

Reference: https://registry.terraform.io/browse/providers

##### 3.3. Validate Terraform configuration file

```shell
terraform validate
```

##### 3.4. Initialize Terraform

```shell
terraform init
```

### Deployment 

#### Execution plan (optional)

Generate a speculative execution plan 

```shell
terraform plan
```

#### Create infrastructure 

```shell
terraform apply
```

or alterantively overriding a custom default variable

```shell
terraform apply -var "container_name=YetAnotherContainerName"
```

### How to run tests

After the deployment

#### Check terraform resourses state 

```shell
terraform show
``` 

#### List deployed resources (optional)

```shell
terraform state list
```

#### Check if the infrastructure is running

In this case, a local nginx container:  

[Welcome to nginx](http://localhost:8080/)

### Check terraform apply output

```shell
terraform output
```

### Undeploy 

#### Remove infrastructure

```shell
terraform destroy
```
