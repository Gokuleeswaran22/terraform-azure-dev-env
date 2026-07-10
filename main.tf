module "resource_group" {
  source = "./modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "network" {
  source = "./modules/network"

  resource_group_name = module.resource_group.resource_group_name
  location            = var.location

  vnet_name          = var.vnet_name
  vnet_address_space = var.vnet_address_space

  subnet_name     = var.subnet_name
  subnet_prefixes = var.subnet_prefixes
}

module "nsg" {
  source = "./modules/nsg"

  nsg_name            = var.nsg_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name

  subnet_id = module.network.subnet_id
}

module "vm" {
  source = "./modules/vm"

  resource_group_name = module.resource_group.resource_group_name
  location            = var.location

  subnet_id = module.network.subnet_id

  vm_name         = var.vm_name
  admin_username  = var.admin_username
  public_key_path = pathexpand(var.public_key_path)
}
