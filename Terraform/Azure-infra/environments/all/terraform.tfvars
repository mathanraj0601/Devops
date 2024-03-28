virtual_network_name = "vn"
address_space_vn =  ["10.0.0.0/16"]


subnet = {
  subnet1 = {
    name            = "subnet1"
    address_prefix  = "10.0.1.0/24"
    security_group  = "nsg1"
  }
  subnet2 = {
    name            = "subnet2"
    address_prefix  = "10.0.2.0/24"
    security_group  = "nsg2"
  }
}
