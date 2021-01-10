# Terraform_Azure_Cnbate_Traffic_Manager


## Description

Provision [Web App](https://docs.azure.cn/zh-cn/articles/azure-operations-guide/app-service-web/),
[Traffic Manager](https://docs.microsoft.com/zh-cn/azure/traffic-manager/traffic-manager-overview),

This example provides recommended settings:

- Web App Deployment
- Traffic Manager 

## Get started with Terraform Cloud

1. Download and install the [Terraform CLI] 

    `choco install terraform`
    
1. Create a service principal in Azure and add the following keys to the workspace's environment variables
    - ARM_CLIENT_ID
    - ARM_CLIENT_SECRET SENSITIVE
    - ARM_TENANT_ID
    - ARM_SUBSCRIPTION_ID

3. Setings service principal Environment Variables on Windows System PC

    `setx ARM_SUBSCRIPTION_ID xxxx-xxxx-xxxx-xxxx`

    `setx ARM_CLIENT_ID xxxx-xxxx-xxxx-xxxx`    

    `setx ARM_CLIENT_SECRET xxxx-xxxx-xxxx-xxxx`

    `setx ARM_TENANT_ID xxxx-xxxx-xxxx-xxxx`

4.  Plan, deploy, and destroy
    `terraform plan`

    `terraform apply`

    `terraform destroy`


## Use this doc and get your Terraform on!

- https://www.terraform.io/docs/providers/azurerm/