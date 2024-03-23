module "resource_group" {
  source = "../../global/"
}


resource "azurerm_subnet" "subnet" {
  name = var.subnet_name
  virtual_network_name = var.virtual_network_name
  address_prefixes =  var.address_space
  resource_group_name = module.resource_group.name
  
}