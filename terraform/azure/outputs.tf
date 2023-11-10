output "azure_core_resource_group_ids" {
  value = values(module.azure.core_resource_groups).*.id
}

output "azure_container_aks_id" {
  value = module.azure.container_aks.id
}

output "azure_storage_account_id" {
  value = module.azure.storage_acc.id
}

output "azure_storage_shares" {
  value = values(module.azure.storage_share).*.id
}