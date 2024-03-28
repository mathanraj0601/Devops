


module "resource_group" {
  source = "../../global/"
}

provider "azurerm" {
   features {}
   
}

resource "azurerm_redis_cache" "example" {
  name                = var.redis-name
location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
  enable_non_ssl_port = var.enable_non_ssl_port
  minimum_tls_version = var.minimum_tls_version

  redis_configuration {
  }
}