vnet_name           = "prod-vnet"
address_space       = ["10.0.0.0/16"]
subnet_names        = ["subnet1", "subnet2"]
subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24"]
resource_group_name = "DevopsChallenge_Prod"
location            = "eastus"
vm_name             = "prod-vm"
vm_size             = "Standard_B2s"
tags = {
  environment = "production"
  owner       = "prod-team"
}