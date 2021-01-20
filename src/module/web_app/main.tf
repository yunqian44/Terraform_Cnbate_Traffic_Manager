resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.app_service_plan_name
  location            = var.app_service_location
  resource_group_name = var.resource_group_name

  #   sku {
  #     tier = "Standard"
  #     size = "S1"
  #   }

  sku = {
    tier = var.app_service_plan.sku
    size = var.app_service_plan.size
  }
}

resource "azurerm_app_service" "app_service" {
  name                = var.app_service_name
  location            = var.app_service_location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan.id

  #   app_settings = {
  #     "ASPNETCORE_ENVIRONMENT" = "Production"
  #   }
  app_settings = var.app_settings
}
