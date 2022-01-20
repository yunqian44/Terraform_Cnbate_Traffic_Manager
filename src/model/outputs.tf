output "cnbate_traffic_manager_id" {
  value = module.cnbate_traffic_manager.traffic_manager_profile_id
}

output "cnbate_traffic_manager_name" {
  value = module.cnbate_traffic_manager.traffic_manager_profile_name
}

output "cnbate_Web_app_ids" {
  value = module.cnbate_Web_app.azurerm_app_service_ids
}

output "cnbate_Web_app_names" {
  value = module.cnbate_Web_app.azurerm_app_service_names
}

output "cnbate_Web_app_urls" {
  value = module.cnbate_Web_app.default_site_hostnames
}


