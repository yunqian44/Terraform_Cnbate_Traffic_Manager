########################## backend #########################
variable "storage_account_name" {
  type        = string
  default     = "cnbateterraformstorage"
  description = "(required)The Azure Storage Account Name of the terraform remote Storage"
}

variable "container_name" {
  type        = string
  default     = "terraform-state"
  description = "(required)The Container Name for the terraform remote storage status file"
}

variable "key" {
  type        = string
  default     = "cnbate.terraform.stats"
  description = "(required)The Container Key Name for terraform the remote storage status file"
}

########################## resource group start #########################
variable "resource_group_name" {
  type        = string
  default     = "Web_Test_TF_RG"
  description = "(required)The name of the resource group"
}

########################## resource group end #########################

variable "traffic_manager_name" {
  type        = string
  default     = "cnbateblogweb"
  description = "(required)The name of the traffic manager profile"
}

variable "traffic_routing_method" {
  type        = string
  default     = "Geographic"
  description = "(required) Specifies the algorithm used to route traffic"
}

variable "relative_name" {
  type        = string
  default     = "cnbateblogweb"
  description = "(required) The relative domain name, this is combined with the domain name used by Traffic Manager to form the FQDN which is exported as documented below."
}

variable "ttl" {
  type        = number
  default     = 60
  description = "(Required) The TTL value of the Profile used by Local DNS resolvers and clients"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "Production"
  }
  description = "(optional) A mapping of tags to assign to the resource."
}

variable "enable_traffic_manager_endpoint" {
  type        = bool
  default     = true
  description = "(required) Whether to create traffic manager endpoint"
}

variable "traffic_manager_endpoint_count" {
  type        = number
  default     = 2
  description = "(required) number of create traffic manager endpoint"
}

variable "traffic_manager_endpoint_names" {
  type = list(string)
  default = [
    "cnbateblogweb_webapp01_performance",
    "cnbateblogweb_webapp02_performance"
  ]
  description = "(required) The names of the Traffic Manager endpoint."
}

variable "traffic_manager_endpoint_type" {
  type        = string
  default     = "azureEndpoints"
  description = "(required) The Endpoint type, must be one of: 1:azureEndpoints,2:externalEndpoints,3:nestedEndpoints"
}

variable "geo_mappings" {
  type = list(list(string))
  default = [
    ["CN"],
    ["SG"]
  ]
  description = "(Optional) A list of Geographic Regions used to distribute traffic, such as WORLD, UK or DE. "
}

########################## web service app #########################
variable "enable" {
  type        = bool
  default     = true
  description = "(required) Whether to create a web app"
}

variable "enable_app_service_plan" {
  type        = bool
  default     = true
  description = "(required) Whether to create a web app plan"
}

variable "app_service_plan_count" {
  type        = number
  default     = 2
  description = "(required) number of create a web app plan"
}

variable "app_service_plan_names" {
  type = list(string)
  default = [
    "cnbate_appserviceplan01",
    "cnbate_appserviceplan02"
  ]
  description = "(required) names of create a web app plan"
}

# variable "app_service_plans" {
#   type = list(map(string))
#   default = [
#     {
#       tier = "Standard",
#       size = "S1"
#     },
#     {
#       tier = "Standard",
#       size = "S1"
#   }]
#   description = "(required) sku of create a web app plan (map list)"
# }

variable "os_types" {
  type = list(string)
  default = [
    "WindowsContainer",
    "WindowsContainer"
  ]
  description = "((Required) The O/S type for the App Services to be hosted in this plan. Possible values include Windows, Linux, and WindowsContainer"
}

variable "sku_names" {
  type = list(string)
  default = [
    "P1V2",
    "P1V2"
  ]
  description = "(Required) The SKU for the plan."
}


variable "enable_app_service" {
  type        = bool
  default     = true
  description = "(required) Whether to create a web app "
}

variable "app_service_count" {
  type        = number
  default     = 2
  description = "(required) number of create a web app."
}

variable "app_service_names" {
  type = list(string)
  default = [
    "CnBateBlogWeb01",
    "CnBateBlogWeb02"
  ]
  description = "(required) specifies the name of the app service."
}

variable "app_settings" {
  type = list(map(string))
  default = [
    {
      "ASPNETCORE_ENVIRONMENT" = "Production"
      "Location"               = "East Asia"
    },
    {
      "ASPNETCORE_ENVIRONMENT" = "Production"
      "Location"               = "Southeast Asia"
    }
  ]
  description = "(Optional) A key-value pair of app settings."
}








