output "name" {
  value = data.azurerm_resource_group.resource_group.name
}

output "location" {
  value = data.azurerm_resource_group.resource_group.location
}

output "tenand_id" {
  value = data.azurerm_client_config.current.tenant_id
}