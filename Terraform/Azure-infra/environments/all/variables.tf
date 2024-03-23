variable "virtual_network_name" { }
variable "address_space_vn" {}
variable "address_space_frontendApp"{}
variable "address_space_api" {}
variable "address_space_data" {}

variable "subnet" {
  type = map(object({
    name            = string
    address_prefix  = string
    security_group  = string
    # Add more attributes as needed
  }))
}

