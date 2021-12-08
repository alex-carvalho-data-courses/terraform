# HashiCorp - Terraform - Get Started #

## What is this repository for? ##

### Quick summary  

Repository to follow the introductory [Terraform](https://www.hashicorp.com/products/terraform) courses from [HashiCorp](https://www.hashicorp.com/).  

[HashiCorp Learn >> Terraform](https://learn.hashicorp.com/terraform)

The HashiCorp Terraform courses are separeted by vendor.  
The project folders reflect these vendors and have specifc instructinons.  

Currently covered courses/vendors in this repository:
- [HashiCorp >> Terraform >> Get Started - Docker](https://learn.hashicorp.com/collections/terraform/docker-get-started)  


### Version 1.1.0  

### [Learn Markdown](https://www.markdownguide.org/)

## How do I get set up? (ubuntu) ###

### Summary of set up
1. Install linux dependencies
2. Add Hashicorp GPG key
3. Add Hashicorp Official repository
4. Install Terraform CLI
   
Source: https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/docker-get-started

### Dependencies

#### apt packages

- gnupg
- software-properties-common
- curl

### Configuration

#### 1. Install linux dependencies

```shell
sudo apt update
sudo apt install -y gnupg software-properties-common curl
```

#### 2. Add Hashicorp GPG key

```shell
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
```

#### 3. Add Hashicorp Official repository

```shell
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
```

#### 4. Install Terraform CLI

```shell
sudo apt update
sudo apt install terraform
```

#### Verify installation

```shell
terraform -help
```

#### Enable tab completion (optional)

```shell
terraform -install-autocomplete
```

## Useful Terraform commands

In bash, go to the Terraform *.tf folder.  

### Configuration

Initialize a Terraform directory.  
Downloads and installs providers in the configuration file.   

```shell
terraform init
```

### Format

Format your configuration file

```shell
terraform fmt
```

### Validate

Validate it the Terraform configuration file is ok  

```shell
terraform validate
```

### Check Deployment Plan  

```shell
terraform plan
```

### Create infraestructure 

```shell
terraform apply
```

### Check terraform resourses state

```shell
terraform show
``` 

### List deployed resources

```shell
terraform state list
```

### Remove infrastructure  
```shell
terraform destroy
```


## Who do I talk to? ###

### Repo owner

alex.carvalho.data@gmail.com  