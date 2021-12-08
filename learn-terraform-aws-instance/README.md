# HashiCorp >> Terraform >> Get Started - Docker  #

## What is this repository for? ##

### Quick summary  

Repository to follow the introductory [Terraform](https://www.hashicorp.com/products/terraform) courses from [HashiCorp](https://www.hashicorp.com/):  

[HashiCorp >> Terraform >> Get Started - AWS](https://learn.hashicorp.com/collections/terraform/aws-get-started)

## How do I get set up? (ubuntu) ###

### Summary of set up

1. Install Terraform CLI
1. Install aws cli
1. Initialize Terraform project

### Dependencies

- Terraform CLI (0.14.9+) installed. 
- aws cli
- aws user
- aws user access key

### Configuration

#### 1. Install Terraform CLI

Described in the README.md in this project's root folder.

#### 2. Install aws cli (linux)

##### 2.1. Install aws cli
```shell
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```
*source: https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html*

##### 2.2. check aws cli installation

```shell
aws --version
```

##### 2.3. create an aws user access key

In https://console.aws.amazon.com/ under  
IAM >> Users >> Security credentials

Create a new `access key` and store the `Access Key Id` and the `Secret Access Key`  

##### 2.4. configure the aws cli

*Example:*
```shell
aws configure

AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
Default region name [None]: us-west-2
Default output format [None]: json
```

#### 3. Initialize Terraform project

##### 3.1. Go to terraform configuration file's folder

The folder that contains the *.tf file

```shell
cd ../learn-terraform-docker-aws-instance
```

##### 3.2. Specify the environment

Create a configuration file called `main.tf` and place the infrastructure there.  

[aws provider](https://registry.terraform.io/providers/hashicorp/aws/latest)

*Reference: https://registry.terraform.io/browse/providers*

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
