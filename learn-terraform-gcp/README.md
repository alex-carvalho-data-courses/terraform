# HashiCorp >> Terraform >> Get Started - Google Cloud  #

## What is this repository for? ##

### Quick summary  

Repository to follow the introductory [Terraform](https://www.hashicorp.com/products/terraform) courses from [HashiCorp](https://www.hashicorp.com/):  

[HashiCorp >> Terraform >> Get Started - Google Cloud](https://learn.hashicorp.com/collections/terraform/gcp-get-started)

## How do I get set up? (ubuntu) ###

### Summary of set up

1. Install Terraform CLI
1. Set up GCP resources
1. Initialize Terraform project

### Dependencies

- Terraform CLI (0.15.3+) installed

### Configuration

#### 1. Install Terraform CLI

Described in the README.md in this project's root folder.

#### 2. Set up GCP

##### 2.1. GCP Project

CHANGE_ME

##### 2.1.1. enable Google Compute Engine

CHANGE_ME

##### 2.2. Service account key

CHANGE_ME

#### 3. Initialize Terraform project

##### 3.1. Go to terraform configuration file's folder

```shell
cd ../learn-terraform-docker-gcp
```

##### 3.2. Specify the environment

Create a configuration file called `main.tf` and place the infrastructure there.  

[gcp provider](https://registry.terraform.io/providers/hashicorp/google/latest)

*Reference: https://registry.terraform.io/browse/providers*

##### 3.3. Validate Terraform configuration file
CHANGE_ME (verify order with 3.4.)
```shell
terraform validate
```

##### 3.4. Initialize Terraform
CHANGE_ME (verify order with 3.3.)
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
terraform apply -var "instance_name=YetAnotherName"
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

### Check terraform apply output

```shell
terraform output
```

### Undeploy 

#### Remove infrastructure

```shell
terraform destroy
```
