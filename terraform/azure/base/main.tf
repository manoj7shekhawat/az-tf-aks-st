module "core" {
  source = "./../modules/core"

  resource_groups = var.resource_groups
}

module "storage" {
  source = "./../modules/storage"

  storage  = var.storage
  rg       = module.core.resource_groups["ne"].name
  location = module.core.resource_groups["ne"].location
}

module "aks" {
  source = "./../modules/container/aks"

  aks                        = var.aks
  rg                         = module.core.resource_groups["ne"].name
  location                   = module.core.resource_groups["ne"].location
  initial_mode               = var.initial_mode
  storage_account_name       = module.storage.storage.name
  storage_primary_access_key = module.storage.storage.primary_access_key
}