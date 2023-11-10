module "azure" {
  source = "./base"

  resource_groups = var.resource_groups
  aks             = var.aks
  storage         = var.storage
  initial_mode    = var.initial_mode
}