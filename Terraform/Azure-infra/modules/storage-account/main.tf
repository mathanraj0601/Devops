
resource "azurerm_storage_account" "storage_account" {
  name                   = var.storage_account_name
    location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}
