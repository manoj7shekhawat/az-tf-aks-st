output "storage" {
  value = azurerm_storage_account.storage_account
}

output "storage_share" {
  value = azurerm_storage_share.file_share
}