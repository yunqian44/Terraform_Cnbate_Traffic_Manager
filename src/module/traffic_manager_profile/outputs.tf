################################ traffic manager profile ################################
output "traffic_manager_profile_name" {
  value = azurerm_traffic_manager_profile.cnbate_traffic_manager_profile.name
}

output "traffic_manager_profile_id" {
  value = azurerm_traffic_manager_profile.cnbate_traffic_manager_profile.id
}

################################ traffic manager profile ################################

output "azurerm_traffic_manager_endpoint_names" {
  value = azurerm_traffic_manager_endpoint.cnbate_traffic_manager_endpoint.*.name
}

output "azurerm_traffic_manager_endpoint_ids" {
  value = azurerm_traffic_manager_endpoint.cnbate_traffic_manager_endpoint.*.id
}
