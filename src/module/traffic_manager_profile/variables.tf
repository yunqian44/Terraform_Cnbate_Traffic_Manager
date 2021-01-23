################################ traffic manager profile ################################
variable "traffic_manager_name" {
  type        = string
  description = ""
}

variable "resource_group_name" {
  type        = string
  description = ""
}

variable "traffic_routing_method" {
  type        = string
  description = "(optional) describe your variable"
}

variable "relative_name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "ttl" {
  type        = number
  description = "(optional) describe your variable"
}

variable "protocol" {
  type        = string
  default     = "http"
  description = "(optional) describe your variable"
}

variable "port" {
  type        = number
  default     = 80
  description = "(optional) describe your variable"
}

variable "path" {
  type        = string
  default     = "/"
  description = "(optional) describe your variable"
}

variable "interval_in_seconds" {
  type        = number
  default     = 30
  description = "(optional) describe your variable"
}

variable "timeout_in_seconds" {
  type        = number
  default     = 10
  description = "(optional) describe your variable"
}

variable "tolerated_number_of_failures" {
  type        = string
  default     = 3
  description = "(optional) describe your variable"
}

variable "tags" {
  type        = map(string)
  description = "(optional) describe your variable"
}

################################ traffic manager endpoint ################################
variable "enable_traffic_manager_endpoint" {
  type        = bool
  default     = false
  description = "(optional) describe your variable"
}

variable "traffic_manager_endpoint_count" {
  type        = number
  default     = 0
  description = "(optional) describe your variable"
}

variable "traffic_manager_endpoint_names" {
  type        = list(string)
  description = "(optional) describe your variable"
}

variable "target_resource_ids" {
  type        = list(string)
  description = "(optional) describe your variable"
}

variable "traffic_manager_endpoint_type" {
  type        = string
  description = "(optional) describe your variable"
}

variable "geo_mappings" {
  type    = list(list(string))
  default = [["CN"], ["SG"]]

}



