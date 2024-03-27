module "resource_group" {
  source = "../../global/"
}


# Define Azure App Service Plan
resource "azurerm_service_plan" "example" {
  name                =var.service_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  os_type             = var.os_type
  sku_name            = var.sku_name
  
}

# Define Azure Linux Web App with additional configurations
resource "azurerm_linux_web_app" "example" {
  name                = var.web_app_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  service_plan_id     = azurerm_service_plan.example.id
  site_config {
    ip_restriction {
      ip_address = var.virtual_network_subnet_cidr
      action     = "Allow"
    }
  }  
  virtual_network_subnet_id = var.virtual_network_subnet_id
  
}
