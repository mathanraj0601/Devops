variable "virtual_network_name" {
  default = "vn-name-1"
  description = "Virtual network name"
}

variable "address_space" {
  default = ["10.0.0.0/16"]
  type = set(string)
  description = "address space list"
  
}