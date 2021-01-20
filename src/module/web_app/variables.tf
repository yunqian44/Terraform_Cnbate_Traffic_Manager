variable "app_service_plan_name" {
  type        = string
  default     = ""
  description = ""
}

variable "app_service_name" {
  type        = string
  default     = ""
  description = ""
}

variable "app_service_location" {
  type        = string
  default     = ""
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "resource_group_name" {
  type        = string
  default     = ""
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "app_service_plan" {
  description = "A map of sku to apply to web app plan"
  type        = map(string)
  default = {
    sku  = "Standard",
    size = "S1"
  }
}

variable "app_settings" {
  description = "A map of app_settings to apply to web app"
  type        = map(string)
  default     = {}
}





