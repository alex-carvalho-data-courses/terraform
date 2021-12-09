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

In [gcp console](https://console.cloud.google.com/) create a new project.  

For example:  
| | |
|---|---|
| **Project name**  | terraform gcp project |

##### 2.1.1. enable Google Compute Engine

Select the project >> Compute Engine >> APIs & Services

Press `+ ENABLE APIS AND SERVICES`  

Search for:
Compute Engine API

Press `ENABLE` button

#### 2.2. Service account key

##### 2.2.1. Create service account

Select the project >> IAM & Admin >> Service Accounts

Press `+ CREATE SERVICE ACCOUNT`  button

Config as follows:

***Service account details***
| | |
|---|---|
| **Service account name** | terraform gcp service account |
| **Service account description** | service account to manage Compute Engines from Terraform| 

Press `CREATE AND CONTINUE` button

***Grant this account access to project***  
| | |
|---|---|
| **Role** | Project >> Editor |

Press `CONTINUE` button

***Grant users access to this service account***  
*skip*

Press `Done` button

##### 2.2.2. Create service account key

Select the project >> IAM & Admin >> Service Accounts (last step will left you here)  

Drilldown in the recently created `Service Account`.  

Select `KEYS` tab.  

Press `ADD KEY >> Create new key` button.

Select `key type` as `JSON`.

Press `CREATE` button.

A file with de access key information will be downloaded automactilly.  


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

the required parameters will be asked

or alterantively pass them as arguments

*Example:*
```shell
terraform apply -var "project=terraform-gcp-project-334512" -var "credentials_file=~/00alex/temp/gcp/terraform-gcp-project.json"
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
