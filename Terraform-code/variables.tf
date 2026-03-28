variable "location" {
  default = "westeurope"
}

variable "resource_group_name" {
  default = "rg-demo-network"
}

variable "vnet_name" {
  default = "demo-vnet"
}

variable "address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet_name" {
  default = "demo-subnet"
}

variable "subnet_prefix" {
  default = "10.0.1.0/24"
}