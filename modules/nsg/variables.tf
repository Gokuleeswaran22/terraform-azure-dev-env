variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to associate the NSG with"
  type        = string
}
