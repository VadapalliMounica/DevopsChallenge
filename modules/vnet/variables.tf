variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "address_space" {
  type        = list(string)
  description = "The address space for the Virtual Network."
}

variable "subnet_names" {
  type        = list(string)
  description = "The names of the subnets."
}

variable "subnet_prefixes" {
  type        = list(string)
  description = "The address prefixes for the subnets."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the VNET will be created."
}

variable "location" {
  type        = string
  description = "The Azure region where the VNET will be created."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the VNET and its subnets."
  default     = {}
}