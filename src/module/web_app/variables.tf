variable "enable" {
  type        = bool
  default     = false
  description = ""
}

variable "enable_app_service_plan" {
  type        = bool
  default     = false
  description = ""
}

variable "app_service_plan_count" {
  type        = number
  default     = 0
  description = ""
}

variable "enable_app_service" {
  type        = bool
  default     = false
  description = ""
}

variable "app_service_count" {
  type        = number
  default     = 0
  description = ""
}

variable "app_service_plan_names" {
  type        = list(string)
  description = ""
}

variable "app_service_names" {
  type        = list(string)
  description = ""
}

variable "app_service_locations" {
  type        = list(string)
  description = "The Azure Regions-* where the Resource Group should exist. Changing this forces a new Resource Group to be created."
}

variable "resource_group_name" {
  type        = string
  default     = ""
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "app_service_plans" {
  description = "A map of sku to apply to web app plan"
  type        = list(map(string))
}

variable "app_settings" {
  description = "A list(map(string)) of app_settings to apply to web app"
  type        = list(map(string))
}





