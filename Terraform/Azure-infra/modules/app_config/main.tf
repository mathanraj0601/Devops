module "resource_group" {
  source = "../../global/"
}

provider "azurerm" {
   features {}
   
}




resource "azurerm_app_configuration" "appconf" {
  name                = var.appconfiguration_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
}

