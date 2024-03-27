
module "resource_group" {
  source = "../../global/"
}

resource "azurerm_private_endpoint" "endpoint" {
  name                = var.connection_name
   location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = var.connection_name
    private_connection_resource_id = var.resource_id
    is_manual_connection           = false
    subresource_names = [""]
  }

  ip_configuration {
    private_ip_address = var.end_point_ip
    name = "${var.connection_name}-default-ip"
     
  }
  

  
}