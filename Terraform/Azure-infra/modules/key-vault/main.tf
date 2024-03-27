module "resource_group" {
  source = "../../global/"
}


module "client" {
  source = "../../global/"
}

resource "azurerm_key_vault" "keyvault" {
  name = var.keyvault_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  sku_name = var.sku_name
  tenant_id = module.client.tenand_id
}