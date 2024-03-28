variable "redis-name" {
  
}

variable "capacity" {
  default = 2
}

variable "family" {
  default = "C"
}

variable "sku_name" {
  default = "Standard"
}

variable "enable_non_ssl_port" {
  default = false
}

variable "minimum_tls_version" {
  default = "1.2"
}