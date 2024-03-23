module "resource_group" {
  source = "../../global/"
}


module "storage_account" {
  source = "../storage-account"
}


resource "azurerm_storage_container" "example" {
  name                  = var.storage_container_name
  storage_account_name  = module.storage_account.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_blob" "example" {
  name                   = var.storage_blob_name
  storage_account_name  = module.storage_account.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = var.blob_type
}