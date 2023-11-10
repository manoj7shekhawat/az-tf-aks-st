output "core_resource_groups" {
  value = module.core.resource_groups
}

output "container_aks" {
  value = module.aks.azurerm_kubernetes_cluster
}

output "storage_acc" {
  value = module.storage.storage
}

output "storage_share" {
  value = module.storage.storage_share
}