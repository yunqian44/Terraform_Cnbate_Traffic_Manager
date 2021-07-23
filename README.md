[![ using GitHub Action for Terraform Auto CI/CD](https://github.com/yunqian44/Terraform_Cnbate_Traffic_Manager/actions/workflows/terraform.yaml/badge.svg)](https://github.com/yunqian44/Terraform_Cnbate_Traffic_Manager/actions/workflows/terraform.yaml)
# Terraform_Azure_Cnbate_Traffic_Manager

## Description

Provision [Web App](https://docs.azure.cn/zh-cn/articles/azure-operations-guide/app-service-web/),
[Traffic Manager](https://docs.microsoft.com/zh-cn/azure/traffic-manager/traffic-manager-overview),

This example provides recommended settings:

- Web App Deployment
- Traffic Manager 
- Resource Group

## Code directory structure description

+ ### src
    + import: There had some already existing resources via manual creation when initially create resources via terraform . You need to mark these resource and use terraform import to include them in codes.
    + model:  Provision and asseblme the actual infrastructure from YHU projects
    + module: Following best practices for Terraform template authoring, create a template deploying infrastructure components into Azure. You can custom some minimum size common components(also call as module) in this folder. In this project most of common modules from microsoft official module templates.   

## Get started with Terraform Cloud

1. download and install the [Terraform CLI] 

    `choco install terraform` 
     
     or

    reference linking: https://www.terraform.io/downloads.html
    
1. create a service principal in Azure and add the following keys to the workspace's environment variables
    - ARM_CLIENT_ID
    - ARM_CLIENT_SECRET SENSITIVE
    - ARM_TENANT_ID
    - ARM_SUBSCRIPTION_ID

3. setings service principal Environment Variables on Windows System PC

    `setx ARM_SUBSCRIPTION_ID xxxx-xxxx-xxxx-xxxx`

    `setx ARM_CLIENT_ID xxxx-xxxx-xxxx-xxxx`    

    `setx ARM_CLIENT_SECRET xxxx-xxxx-xxxx-xxxx`

    `setx ARM_TENANT_ID xxxx-xxxx-xxxx-xxxx`

4.  plan, deploy, and destroy

    step into the working directory

    `cd scr/model/model`

    `terraform plan`

    `terraform apply`

    `terraform destroy`


## Use this doc and get your Terraform on!

- https://www.terraform.io/docs/providers/azurerm/
