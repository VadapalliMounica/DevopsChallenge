output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "subnet_ids" {
  value = azurerm_subnet.subnet[*].id
}

output "blob_storage_account_name" {
  value = azurerm_storage_account.blob_account.name
}