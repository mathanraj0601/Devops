module "resource_group" {
  source = "../../global/"
}


resource "azurerm_virtual_network" "virtual_network" {
  name = var.virtual_network_name
   location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  address_space       = var.address_space
 
}