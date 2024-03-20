module "virtual_network" {
  source = "../../modules/virtual network"
  address_space = "${terraform.workspace}-${var.address_space_vn}"
  virtual_network_name = "${terraform.workspace}-${var.virtual_network_name}" 
}

module "Frontend-APP-subnet" {
  source = "../../modules/subnet"
  address_space =  "${terraform.workspace}-${var.subnet[subnet1]}"
  subnet_name =  "${terraform.workspace}-${var.address_space_frontendApp}"
  virtual_network_name = module.virtual_network.name
}