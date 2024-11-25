output "rg_id" {
  description = "The ID of the resource group"
  value       = data.azurerm_resource_group.existing.id
}

output "sa_blob_endpoint" {
  description = "The endpoint URL for the blob storage"
  value       = azurerm_storage_account.sa.primary_blob_endpoint
}

output "vnet_id" {
  description = "The ID of the virtual network"
  value       = azurerm_virtual_network.vnet.id
}