module "vnet" {
  source              = "../../modules/vnet"
  vnet_name           = "prod-vnet"
  address_space       = ["10.1.0.0/16"]
  subnet_names        = ["subnet1", "subnet2"]
  subnet_prefixes     = ["10.1.1.0/24", "10.1.2.0/24"]
  resource_group_name = "DevopsChallenge_Prod"
  location            = "eastus"
  tags = {
    environment = "production"
    owner       = "prod-team"
  }
}

data "azurerm_key_vault" "example" {
  name                = "myKeyVault"
  resource_group_name = "DevopsChallenge_Prod"
}

data "azurerm_key_vault_secret" "admin_password" {
  name         = "prodAdminPassword"
  key_vault_id = data.azurerm_key_vault.example.id
}

data "azurerm_key_vault_secret" "admin_username" {
  name         = "prodAdminUsername"
  key_vault_id = data.azurerm_key_vault.example.id
}

module "vm" {
  source              = "../../modules/vm"
  vm_name             = "prod-vm"
  vm_size             = "Standard_B2s"
  admin_username      = data.azurerm_key_vault_secret.admin_username.value
  admin_password      = data.azurerm_key_vault_secret.admin_password.value
  resource_group_name = "DevopsChallenge_Dev"
  location            = "eastus"
  subnet_id           = module.vnet.subnet_ids[0]
  tags = {
    environment = "development"
    owner       = "dev-team"
  }
}