resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage.name
  resource_group_name      = var.rg
  location                 = var.location
  account_tier             = var.storage.account_tier
  account_replication_type = var.storage.account_replication_type
}

resource "azurerm_storage_share" "file_share" {
  for_each = var.storage.share

  name                 = each.value.name
  storage_account_name = azurerm_storage_account.storage_account.name
  quota                = each.value.quota
}

resource "azurerm_storage_share_file" "share_file" {
  name             = "input.txt"
  storage_share_id = azurerm_storage_share.file_share["one"].id
  source           = "./modules/storage/input.txt"
}