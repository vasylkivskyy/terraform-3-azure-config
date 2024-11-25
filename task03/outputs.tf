output "rg_id" {
  value = data.azurerm_resource_group.existing.id
}

output "sa_blob_endpoint" {
  value = azurerm_storage_account.sa.primary_blob_endpoint
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}