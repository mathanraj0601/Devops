variable "subnet_name" {
}

variable "virtual_network_name" {
}

variable "address_space" {
    default = ["10.0.1.0/24"]
    type = set(string)
}
