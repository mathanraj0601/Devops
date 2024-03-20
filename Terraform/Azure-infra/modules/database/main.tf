module "resource_group" {
  source = "../../global/"
}

provider "azurerm" {
   features {}
}


resource "azurerm_mssql_server" "example" {
  name                         = var.sqlservername
  location            = module.resource_group.location
  resource_group_name = module.resource_group.name
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"

}


module "storage_account" {
  source = "../storage-account"
  storage_account_name = "kodekloud123"
}

resource "azurerm_mssql_database" "example" {
  name                = "myexamplesqldatabase"
  server_id = azurerm_mssql_server.example.id
  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = true
  }
}