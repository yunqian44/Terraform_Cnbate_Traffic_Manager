################################ traffic manager profile ################################
variable "traffic_manager_name" {
  type        = string
  description = "(required)The name of the traffic manager profile"
}

variable "resource_group_name" {
  type        = string
  description = "The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created."
}

variable "traffic_routing_method" {
  type        = string
  description = "(required) Specifies the algorithm used to route traffic"
}

variable "relative_name" {
  type        = string
  description = "(required) The relative domain name, this is combined with the domain name used by Traffic Manager to form the FQDN which is exported as documented below."
}

variable "ttl" {
  type        = number
  description = "(Required) The TTL value of the Profile used by Local DNS resolvers and clients"
}

variable "protocol" {
  type        = string
  default     = "http"
  description = " (required) The protocol used by the monitoring checks, supported values are HTTP, HTTPS and TCP."
}

variable "port" {
  type        = number
  default     = 80
  description = "(required) The port number used by the monitoring checks."
}

variable "path" {
  type        = string
  default     = "/"
  description = " (optional) The path used by the monitoring checks. Required when protocol is set to HTTP or HTTPS - cannot be set when protocol is set to TCP."
}

variable "interval_in_seconds" {
  type        = number
  default     = 30
  description = "(optional) The interval used to check the endpoint health from a Traffic Manager probing agent."
}

variable "timeout_in_seconds" {
  type        = number
  default     = 10
  description = "(optional) The amount of time the Traffic Manager probing agent should wait before considering that check a failure when a health check probe is sent to the endpoint. "
}

variable "tolerated_number_of_failures" {
  type        = string
  default     = 3
  description = "(optional) The number of failures a Traffic Manager probing agent tolerates before marking that endpoint as unhealthy. Valid values are between 0 and 9."
}

variable "tags" {
  type        = map(string)
  description = "(optional) A mapping of tags to assign to the resource."
}

################################ traffic manager endpoint ################################
variable "enable_traffic_manager_endpoint" {
  type        = bool
  default     = false
  description = "(required) whether to create traffic manager endpoint"
}

variable "traffic_manager_endpoint_count" {
  type        = number
  default     = 0
  description = "(required) number of create traffic manager endpoint"
}

variable "traffic_manager_endpoint_names" {
  type        = list(string)
  description = "(required) The name of the Traffic Manager endpoint."
}

variable "target_resource_ids" {
  type        = list(string)
  description = " (optional) The resource id of an Azure resource to target. This argument must be provided for an endpoint of type azureEndpoints or nestedEndpoints."
}

variable "traffic_manager_endpoint_type" {
  type        = string
  description = "(required) The Endpoint type, must be one of: 1:azureEndpoints,2:externalEndpoints,3:nestedEndpoints"
}

variable "geo_mappings" {
  type        = list(list(string))
  description = "(Optional) A list of Geographic Regions used to distribute traffic, such as WORLD, UK or DE. "
}



