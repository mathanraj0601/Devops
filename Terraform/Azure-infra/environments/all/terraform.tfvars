virtual_network_name = "vn"
address_space_vn =  ["10.0.0.0/16"]


subnets = {
  "apiappsubnet"={
    name = "ApiAppsubnet"
    address_space=["10.0.1.0/24"]
  }

  "frontendAppsubnet"={
    name = "frontendAppsubnet"
    address_space=["10.0.2.0/24"]
  }

  "privateendpointsubnet"={
    name = "privateendpointsubnet"
    address_space=["10.0.3.0/24"]
  }
}


web_app_name = "webapp"
app_service_name = "serviceapp"
app_port = 433
app_security_group_name = "app-sg-name"
app_security_rule_name = "app-sg-rule"

web_api_name  = "webapi"
api_service_name   = "serviceapi"
api_port = 433
api_security_group_name = "api-sg-name"
api_security_rule_name = "app-sg-rule"

storage_account_name_blob = "blobaccount"
storage_blob_name = "blob-api"
storage_container_name = "blob-container-name"

app_insights_name="app_insight"

database_endpoint = "sql-endpoint"
redis_endpoint = "redis-endpoint"


sql_account_name = "sqlaccount"
sql_server_name = "mysqlserver123"
sql_server_ip = "10.0.3.24"

redis_cache_name = "myredisserver123"
redis_endpoint_ip = "10.0.3.24"


app_configuration_name="app-configuration-name"

workspace_config = {
  "dev" = "development"
  "qa" = "aqassu"
  "prod" = "production"
  "default"="development"

}

key_vault_name = "key-kk321"




