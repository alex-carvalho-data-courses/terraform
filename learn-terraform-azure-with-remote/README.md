# <img src="../img/terraform-logo.png" alt="Terraform" width="30" style="vertical-align: middle;"> <img src="../img/azureDevOps-600x600.png" alt="azure" width="30" style="vertical-align: middle;"> | Hasicorp - Terraform - Azure - With Terraform Cloud backend - Tutorial #

## What is this repository for? ##

### Quick summary

Repository to follow the introductory [Terraform](https://www.hashicorp.com/products/terraform) courses from [HashiCorp](https://www.hashicorp.com/):  


[HashiCorp >> Terraform >> Get Started - Azure >> Store Remote State](https://learn.hashicorp.com/tutorials/terraform/azure-remote?in=terraform/azure-get-started)  


## How do I get set up? ##

### Summary of set up

1. Install azure client
2. Create an Azure Account
3. Configure azure client
4. Create a service principal
5. logout azure cli
6. Create Terraform Cloud Account
7. Create an Organization at Terraform Cloud
8. Authenticate with Terraform Cloud
9. Set Terraform Cloud Environment Variables

### Dependencies

- Azure Account
- Azure Service Principal
- Azure cli
- Terraform cli

### Configuration

#### 1. Install azure cli

https://docs.microsoft.com/en-us/cli/azure/install-azure-cli

#### 2. Create an Azure Account

https://azure.microsoft.com/en-us/

#### 3. Configure azure client

##### 3.1. login 

```bash
az login
```

example output:  

```bash
[
  {
    "cloudName": "AzureCloud",
    "homeTenantId": "0envbwi39-home-Tenant-Id",
    "id": "35akss-subscription-id-example",
    "isDefault": true,
    "managedByTenants": [],
    "name": "Subscription-Name",
    "state": "Enabled",
    "tenantId": "0envbwi39-TenantId",
    "user": {
      "name": "your-username@domain.com",
      "type": "user"
    }
  }
]
```

##### 3.2. set the subscription

```bash
az account set --subscription "35akss-subscription-id-example"
```

#### 4. Create a service principal

```bash
az ad sp create-for-rbac --role="Contributor" --display-name="terraform-tutorial-service-principal" --scopes="/subscriptions/<SUBSCRIPTION_ID>"
```

output pattern:

```bash
{
  "appId": "xxxxxx-xxx-xxxx-xxxx-xxxxxxxxxx",
  "displayName": "azure-cli-2022-xxxx",
  "password": "xxxxxx~xxxxxx~xxxxx",
  "tenant": "xxxxx-xxxx-xxxxx-xxxx-xxxxx"
}
```

#### 5. logout azure cli

For Service Principal usage enforcement

```bash
az logout
```

#### 6. Create Terraform Cloud Account

https://app.terraform.io/public/signup/account?utm_content=offers_tfc&utm_source=cloud_landing


#### 7. Create an Organization at Terraform Cloud

At the Terraform's website GUI create an Organization named:  
`hashicorp-terraform-tutorials`

#### 8. Authenticate with Terraform Cloud

```bash
terraform login
```

#### 9. Set Terraform Cloud Environment Variables

At the Terraform Cloud UI  
Go to the recently create organization  
`hashicorp-terraform-tutorials`  
Select the workspace:  
`learn-terraform-azure`  
At the variables tab, configure as follows:
| Environment Variable | AZ CLI                                               |
|----------------------|------------------------------------------------------|
| ARM_SUBSCRIPTION_ID	 | SUBSCRIPTION_ID from the last command's input.       |
| ARM_CLIENT_ID	appID  | from the last command's output.                      |
| ARM_CLIENT_SECRET	   | password from the last command's output. (Sensitive) |
| ARM_TENANT_ID	       | tenant from the last command's output.               |


### How to run tests

#### 1. Initialize terraform

```bash
terraform init
```

#### 2. Validate Terraform configuration

```bash
terraform validate
```

### Deployment instructions

#### 1. Set the environment variables

```bash
export ARM_CLIENT_ID="<APPID_VALUE>"
export ARM_CLIENT_SECRET="<PASSWORD_VALUE>"
export ARM_SUBSCRIPTION_ID="<SUBSCRIPTION_ID>"
export ARM_TENANT_ID="<TENANT_VALUE>"
```

#### 2. apply terraform infrastructure

```bash
terraform apply
```

optionaly apply infrastructure passing the resource group name as parameter  

```bash
terraform apply -var "resource_group_name=myNewResourceGroupName"
```

## Usefull commands

### Format Terraform configuration files

```bash
terraform fmt
```

### Inspect Terraform state

```bash
terraform show
```

```bash
terraform state list
```

# Who do I talk to? ##

### Repo owner or admin

[alex carvalho](mailto:alex.carvalho.data@gmail.com)
