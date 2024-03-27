
module "resource_group" {
  source = "../../global/"
}

resource "azurerm_network_security_group" "example" {
  name                = var.security_group_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name

  # Allow inbound traffic to SQL Server from the specified private subnet
  security_rule {
    name                       = "AllowInnerTraffic"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = var.destination_port  # Assuming SQL Server default port
    source_address_prefix      = var.public_subnet_cidr  # Specify the CIDR of the private subnet
    destination_address_prefix = "*"
  }

  # Deny all other inbound traffic
  security_rule {
    name                       = "DenyAllInbound"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Deny"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  # Allow all outbound traffic
  security_rule {
    name                       = "AllowAllOutbound"
    priority                   = 300
    direction                  = "Outbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }


}
