module "resource_group" {
  source = "../../global/"
}

resource "azurerm_sql_server" "example" {
  name                         = var.sqlservername
    location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"


}

module "storage_account" {
  source = "../storage-account"
  storage_account_name = "sql_server"
}

resource "azurerm_sql_database" "example" {
  name                = "myexamplesqldatabase"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  server_name         = azurerm_sql_server.example.name


  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}