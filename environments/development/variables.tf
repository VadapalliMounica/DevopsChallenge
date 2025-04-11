variable "vm_name" {
  type        = string
  description = "The name of the Virtual Machine."
}

variable "vm_size" {
  type        = string
  description = "The size of the Virtual Machine."
  default     = "Standard_B1s"
}

variable "admin_username" {
  type        = string
  description = "The admin username for the VM."
}

variable "admin_password" {
  type        = string
  description = "The admin password for the VM."
  sensitive   = true
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the VM will be created."
}

variable "location" {
  type        = string
  description = "The Azure region where the VM will be created."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet where the VM will be deployed."
}

variable "tags" {
  type        = map(string)
  description = "A map of tags to assign to the VM."
  default     = {}
}