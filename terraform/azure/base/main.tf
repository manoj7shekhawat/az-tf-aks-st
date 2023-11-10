module "core" {
  source = "./../modules/core"

  resource_groups = var.resource_groups
}

module "aks" {
  source = "./../modules/container/aks"

  aks      = var.aks
  rg       = module.core.resource_groups["ne"].name
  location = module.core.resource_groups["ne"].location
}

module "storage" {
  source = "./../modules/storage"

  storage  = var.storage
  rg       = module.core.resource_groups["ne"].name
  location = module.core.resource_groups["ne"].location
}