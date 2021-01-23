output "app_service_plan_ids" {
  value = azurerm_app_service_plan.app_service_plan.*.id
}

output "azurerm_app_service_ids" {
  value = azurerm_app_service.app_service.*.id
}

output "azurerm_app_service_names" {
  value = azurerm_app_service.app_service.*.name
}
