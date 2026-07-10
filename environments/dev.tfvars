resource_group_name = "rg-dev-demo"
location            = "Central India"

vnet_name = "vnet-dev"

vnet_address_space = [
  "10.0.0.0/16"
]

subnet_name = "subnet-dev"

subnet_prefixes = [
  "10.0.1.0/24"
]

nsg_name = "nsg-dev"

vm_name = "vm-dev"

admin_username = "azureuser"

public_key_path = "~/.ssh/id_ed25519.pub"
