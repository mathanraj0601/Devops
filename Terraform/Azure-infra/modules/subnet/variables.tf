variable "subnet_name" {
    default = "subnet-2"
}

variable "virtual_network_name" {
    default = "vn-name-1"
}

variable "address_space" {
    default = ["10.0.1.0/24"]
    type = set(string)
}
