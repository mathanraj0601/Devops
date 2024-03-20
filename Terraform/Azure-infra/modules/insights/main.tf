
module "resource_group" {
  source = "../../global/"
}

provider "azurerm" {
   features {}
   
}

resource "azurerm_application_insights" "example" {
  name                = var.name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  application_type    = "web"
  
}