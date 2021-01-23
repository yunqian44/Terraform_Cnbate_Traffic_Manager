########################## backend #########################
variable "storage_account_name" {
  type        = string
  default     = "cnbateterraformstorage"
  description = "(optional) describe your variable"
}

variable "container_name" {
  type        = string
  default     = "terraform-state"
  description = "(optional) describe your variable"
}

variable "key" {
  type        = string
  default     = "cnbate.terraform.stats"
  description = "(optional) describe your variable"
}

########################## resource group #########################
variable "resource_group_name" {
  type        = string
  default     = "Web_Test_TF_RG"
  description = "(optional) describe your variable"
}

########################## resource group #########################

variable "traffic_manager_name" {
  type        = string
  default     = "cnbateblogweb"
  description = "(optional) describe your variable"
}

variable "traffic_routing_method" {
  type        = string
  default     = "Geographic"
  description = "(optional) describe your variable"
}

variable "relative_name" {
  type        = string
  default     = "cnbateblogweb"
  description = "(optional) describe your variable"
}

variable "ttl" {
  type        = number
  default     = 60
  description = "(optional) describe your variable"
}

variable "tags" {
  type = map(string)
  default = {
    Environment = "Production"
  }
  description = "(optional) describe your variable"
}

variable "enable_traffic_manager_endpoint" {
  type        = bool
  default     = true
  description = "(optional) describe your variable"
}

variable "traffic_manager_endpoint_count" {
  type        = number
  default     = 2
  description = "(optional) describe your variable"
}

variable "traffic_manager_endpoint_names" {
  type = list(string)
  default = [
    "cnbateblogweb_webapp01_performance",
    "cnbateblogweb_webapp02_performance"
  ]
  description = "(optional) describe your variable"
}

variable "traffic_manager_endpoint_type" {
  type        = string
  default     = "azureEndpoints"
  description = "(optional) describe your variable"
}

variable "geo_mappings" {
  type = list(list(string))
  default = [
    ["CN"],
    ["SG"]
  ]
  description = "(optional) describe your variable"
}

########################## web service app #########################
variable "enable" {
  type        = bool
  default     = true
  description = "(optional) describe your variable"
}

variable "enable_app_service_plan" {
  type        = bool
  default     = true
  description = "(optional) describe your variable"
}

variable "app_service_plan_count" {
  type        = number
  default     = 2
  description = "(optional) describe your variable"
}

variable "app_service_plan_names" {
  type = list(string)
  default = [
    "cnbate_appserviceplan01",
    "cnbate_appserviceplan02"
  ]
  description = "(optional) describe your variable"
}

variable "app_service_plans" {
  type = list(map(string))
  default = [
    {
      tier = "Standard",
      size = "S1"
    },
    {
      tier = "Standard",
      size = "S1"
  }]
  description = "(optional) describe your variable"
}

variable "enable_app_service" {
  type        = bool
  default     = true
  description = "(optional) describe your variable"
}

variable "app_service_count" {
  type        = number
  default     = 2
  description = "(optional) describe your variable"
}

variable "app_service_names" {
  type = list(string)
  default = [
    "CnBateBlogWeb01",
    "CnBateBlogWeb02"
  ]
  description = "(optional) describe your variable"
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
      "Loaction"               = "Southeast Asia"
    }
  ]
  description = "(optional) describe your variable"
}








