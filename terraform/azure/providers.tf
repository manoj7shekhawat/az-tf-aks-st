terraform {
  required_version = ">= 1.5.7"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.80.0"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.23.0"
    }
  }

  backend "azurerm" {
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}

data "azurerm_kubernetes_cluster" "aks_cluster_data" {
  count = var.initial_mode ? 0 : 1
  name                = module.azure.container_aks.name
  resource_group_name = var.resource_groups["ne"].name
}

provider "kubernetes" {
  host                   =  var.initial_mode ? null : "${data.azurerm_kubernetes_cluster.aks_cluster_data[0].kube_config.0.host}"
  client_certificate     =  var.initial_mode ? null : "${base64decode(data.azurerm_kubernetes_cluster.aks_cluster_data[0].kube_config.0.client_certificate)}"
  client_key             =  var.initial_mode ? null : "${base64decode(data.azurerm_kubernetes_cluster.aks_cluster_data[0].kube_config.0.client_key)}"
  cluster_ca_certificate =  var.initial_mode ? null : "${base64decode(data.azurerm_kubernetes_cluster.aks_cluster_data[0].kube_config.0.cluster_ca_certificate)}"
}