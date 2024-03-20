

module "resource_group" {
  source = "../../global/"
}


resource "azurerm_network_security_group" "security_group" {
  name                = var.security_group_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name

  security_rule {
    name                       = var.security_rule_name
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = var.destination_port
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

