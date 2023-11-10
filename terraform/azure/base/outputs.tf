output "core_resource_groups" {
  value = module.core.resource_groups
}

output "container_aks" {
  value = module.aks.azurerm_kubernetes_cluster
}