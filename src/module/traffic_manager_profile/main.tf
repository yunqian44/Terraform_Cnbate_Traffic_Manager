resource "azurerm_traffic_manager_profile" "cnbate_traffic_manager_profile" {
  name                = var.traffic_manager_name
  resource_group_name = var.resource_group_name

  traffic_routing_method = var.traffic_routing_method

  dns_config {
    relative_name = var.relative_name
    ttl           = var.ttl
  }

  monitor_config {
    protocol                     = var.protocol
    port                         = var.port
    path                         = var.path
    interval_in_seconds          = var.interval_in_seconds
    timeout_in_seconds           = var.timeout_in_seconds
    tolerated_number_of_failures = var.tolerated_number_of_failures
  }

  tags = var.tags
}

resource "azurerm_traffic_manager_endpoint" "cnbate_traffic_manager_endpoint" {
  count               = var.enable_traffic_manager_endpoint && var.traffic_manager_endpoint_count > 0 ? var.traffic_manager_endpoint_count : 0
  name                = element(var.traffic_manager_endpoint_names, count.index)
  resource_group_name = var.resource_group_name
  profile_name        = azurerm_traffic_manager_profile.cnbate_traffic_manager_profile.name
  target_resource_id  = element(var.target_resource_ids, count.index)
  type                = var.traffic_manager_endpoint_type

  geo_mappings = element(var.geo_mappings, count.index)
}
