provider "azurerm" {
  version = "~>2.0"
  features {}
}

data "azurerm_resource_group" "cnbate_resource_group" {
  name = "Web_Test_TF_RG"
}


locals {
  location_eastAsia      = "East Asia"
  location_southeastAsia = "Southeast Asia"
}

resource "azurerm_traffic_manager_profile" "cnbate_traffic_manager_profile" {
  name                = "cnbateblogweb"
  resource_group_name = data.azurerm_resource_group.cnbate_resource_group.name

  traffic_routing_method = "Geographic"

  dns_config {
    relative_name = "cnbateblogweb"
    ttl           = 60
  }

  monitor_config {
    protocol                     = "http"
    port                         = 80
    path                         = "/"
    interval_in_seconds          = 30
    timeout_in_seconds           = 10
    tolerated_number_of_failures = 3
  }

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_traffic_manager_endpoint" "cnbate_traffic_manager_endpoint01" {
  name                = "cnbateblogweb_webapp01_performance"
  resource_group_name = data.azurerm_resource_group.cnbate_resource_group.name
  profile_name        = azurerm_traffic_manager_profile.cnbate_traffic_manager_profile.name
  target_resource_id  = azurerm_app_service.cnbate_app_service01.id
  type                = "azureEndpoints"

  geo_mappings = ["CN"]
}

resource "azurerm_traffic_manager_endpoint" "cnbate_traffic_manager_endpoint02" {
  name                = "cnbateblogweb_webapp02_performance"
  resource_group_name = data.azurerm_resource_group.cnbate_resource_group.name
  profile_name        = azurerm_traffic_manager_profile.cnbate_traffic_manager_profile.name
  target_resource_id  = azurerm_app_service.cnbate_app_service02.id
  type                = "azureEndpoints"

  geo_mappings = ["SG"]
}

resource "azurerm_app_service_plan" "cnbate_app_service_plan01" {
  name                = "cnbate_appserviceplan01"
  location            = local.location_eastAsia
  resource_group_name = data.azurerm_resource_group.cnbate_resource_group.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service_plan" "cnbate_app_service_plan02" {
  name                = "cnbate_appserviceplan02"
  location            = local.location_southeastAsia
  resource_group_name = data.azurerm_resource_group.cnbate_resource_group.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "cnbate_app_service01" {
  name                = "CnBateBlogWeb01"
  location            = local.location_eastAsia
  resource_group_name = data.azurerm_resource_group.cnbate_resource_group.name
  app_service_plan_id = azurerm_app_service_plan.cnbate_app_service_plan01.id

  app_settings = {
    "ASPNETCORE_ENVIRONMENT" = "Production"
  }
}

resource "azurerm_app_service" "cnbate_app_service02" {
  name                = "CnBateBlogWeb02"
  location            = local.location_southeastAsia
  resource_group_name = data.azurerm_resource_group.cnbate_resource_group.name
  app_service_plan_id = azurerm_app_service_plan.cnbate_app_service_plan02.id

  app_settings = {
    "ASPNETCORE_ENVIRONMENT" = "Production"
  }
}



