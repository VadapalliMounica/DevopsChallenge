vnet_name           = "dev-vnet"
address_space       = ["10.0.0.0/16"]
subnet_names        = ["subnet1", "subnet2"]
subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24"]
resource_group_name = "DevopsChallenge_Dev"
location            = "eastus"
vm_name             = "dev-vm"
vm_size             = "Standard_B2s"
tags = {
  environment = "development"
  owner       = "dev-team"
}