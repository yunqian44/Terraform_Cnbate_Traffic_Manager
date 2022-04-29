variable "enable" {
  type        = bool
  default     = false
  description = "(required) main switch whether to create the app web service"
}

variable "enable_app_service_plan" {
  type        = bool
  default     = false
  description = "(required) whether to create the app web service plan"
}

variable "app_service_plan_count" {
  type        = number
  default     = 0
  description = "(required) number of create the app web service plan"
}

variable "enable_app_service" {
  type        = bool
  default     = false
  description = "(required) whether to create the app web service"
}

variable "app_service_count" {
  type        = number
  default     = 0
  description = "(required) number of create the app web service"
}

variable "app_service_plan_names" {
  type        = list(string)
  description = "(required) name of create a web app plan"
}

variable "app_service_names" {
  type        = list(string)
  description = "(required) specifies the name of the app service."
}

variable "app_service_locations" {
  type        = list(string)
  description = "The Azure Regions * where the Resource Group should exist. Changing this forces a new Resource Group to be created."
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


variable "os_types" {
  type        = list(string)
  description = "(Required) The O/S type for the App Services to be hosted in this plan. Possible values include Windows, Linux, and WindowsContainer"
}

variable "sku_names" {
  type        = list(string)
  description = " (Required) The SKU for the plan. "
}








