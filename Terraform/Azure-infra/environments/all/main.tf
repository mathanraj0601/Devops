
# command code doesn't have access in kodekloud azure
module "client" {
  source = "../../global"
}

provider "azurerm" {
   features {}
   subscription_id ="2b3ce20e-c053-465e-a1ec-64f4cdf84c1f"
}


module "virtual_network" {
  source = "../../modules/virtual network"
  address_space = var.address_space_vn
  virtual_network_name = "${var.workspace_config[terraform.workspace]}-${var.virtual_network_name}" 
}

module "Frontend-APP-subnet" {
  source = "../../modules/subnet"
  subnet_name = "${var.workspace_config[terraform.workspace]}-${var.subnets["apiappsubnet"]["name"]}"
  virtual_network_name = module.virtual_network.name
  address_space = var.subnets["apiappsubnet"]["address_space"]

}

module "Web-api-subnet" {
  source = "../../modules/subnet"
  subnet_name = "${var.workspace_config[terraform.workspace]}-${var.subnets["frontendAppsubnet"]["name"]}"
  virtual_network_name = module.virtual_network.name
  address_space = var.subnets["frontendAppsubnet"]["address_space"]

}

module "Private-endpoint-subnet" {
  source = "../../modules/subnet"
  subnet_name = "${var.workspace_config[terraform.workspace]}-${var.subnets["privateendpointsubnet"]["name"]}"
  virtual_network_name = module.virtual_network.name
  address_space = var.subnets["privateendpointsubnet"]["address_space"]

}

module "network-security-app" {
  source = "../../modules/network-security-group"
  destination_port = var.app_port
  security_group_name = var.app_security_group_name
  security_rule_name = var.app_security_rule_name
}

module "network_security_subnet_association_app" {
  source = "../../modules/network-security-association"
  subnet_id = module.Frontend-APP-subnet.id
  security_group_id = module.network-security-api.id
}

module "network-security-api" {
  source = "../../modules/network-security-group"
  destination_port = var.api_port
  security_group_name = var.api_security_group_name
  security_rule_name = var.api_security_rule_name
}


module "network_security_subnet_association_api" {
  source = "../../modules/network-security-association"
  subnet_id = module.Web-api-subnet.id
  security_group_id = module.network-security-app.id
}


# module "web_app" {
#   source = "../../modules/web-app"
#   web_app_name = "${var.workspace_config[terraform.workspace]}-${var.web_app_name}"
#   virtual_network_subnet_id = module.Frontend-APP-subnet.id
#   service_name = "${var.workspace_config[terraform.workspace]}-${var.app_service_name}" 
# }

# module "web_api" {
#   source = "../../modules/web-app"
#   web_app_name = "${var.workspace_config[terraform.workspace]}-${var.web_api_name}"
#   virtual_network_subnet_id = module.Web-api-subnet.id
#   service_name = "${var.workspace_config[terraform.workspace]}-${var.api_service_name}" 
# }


module "blob_storage" {
  source = "../../modules/blob"
  storage_blob_name = "${var.workspace_config[terraform.workspace]}-${var.storage_blob_name}" 
  storage_account_name =  "${var.workspace_config[terraform.workspace]}${var.storage_account_name_blob}" 
  storage_container_name =  "${var.workspace_config[terraform.workspace]}-${var.storage_container_name}" 
}

# module "app_insights" {
#   source = "../../modules/insights"
#   name = "${var.workspace_config[terraform.workspace]}-${var.app_insights_name}"  
# }


# module "sql_database" {
#   source = "../../modules/database"
#   storage_account_name = "${var.workspace_config[terraform.workspace]}-${var.sql_account_name}" 
#   sqlservername = "${var.workspace_config[terraform.workspace]}-${var.sql_server_name}" 

# }

# module "database_endpoint" {
#   source = "../../modules/end_point"
#   connection_name = "${var.workspace_config[terraform.workspace]}-${var.database_endpoint}" 
#   resource_id = module.sql_database.id
#   subnet_id = module.Private-endpoint-subnet.id
#   end_point_ip = var.sql_server_ip
# }

# module "redis_cache" {
#   source = "../../modules/redis"
#   redis-name = var.redis_cache_name
# }

# module "redis_endpoint" {
#   source = "../../modules/end_point"
#   connection_name = "${var.workspace_config[terraform.workspace]}-${var.redis_endpoint}" 
#   resource_id = module.redis_cache.id
#   subnet_id = module.Private-endpoint-subnet.id
#   end_point_ip = var.redis_endpoint_ip
# }


# module "app_configuration" {
#   source = "../../modules/app_config"
#   appconfiguration_name =  "${var.workspace_config[terraform.workspace]}-${var.app_configuration_name}"
# }


# Remove if app config have permission
module "key_vault" {
  source = "../../modules/key-vault"
  keyvault_name ="${var.workspace_config[terraform.workspace]}-${var.key_vault_name}" 
}