variable "virtual_network_name" { }
variable "address_space_vn" {}
variable "subnets" {
  type = map(object({
    name = string
    address_space = set(string)
  }))
}

variable "web_app_name" {
  
}
variable "app_service_name" {
  
}

variable "app_port" {
  
}

variable "app_security_group_name" {
  
}

variable "app_security_rule_name" {
  
}


variable "web_api_name" {
  
}
variable "api_service_name" {
}
variable "api_port" {
  
}

variable "api_security_group_name" {
  
}

variable "api_security_rule_name" {
  
}



variable "storage_account_name_blob" { 
}
variable "storage_blob_name" {
}
variable "storage_container_name" { 
}


variable "app_insights_name" {
  
}

variable "database_endpoint" {
}

variable "redis_endpoint" {
  
}

variable "sql_server_name" {

}

variable "sql_account_name" {
  
}
variable "sql_server_ip" {
  
}

variable "redis_cache_name" {

}

variable "redis_endpoint_ip" {
  
}


variable "app_configuration_name" {
  
}

variable "workspace_config" {
  type = map(string)
}

variable "key_vault_name" {
  
}