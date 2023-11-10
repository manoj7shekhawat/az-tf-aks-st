resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks.name
  location            = var.location
  resource_group_name = var.rg
  dns_prefix          = var.aks.dns_prefix

  default_node_pool {
    name       = var.aks.default_node_pool.name
    node_count = var.aks.default_node_pool.node_count
    vm_size    = var.aks.default_node_pool.vm_size
  }

  identity {
    type = var.aks.identity.type
  }

  tags = var.aks.tags
}