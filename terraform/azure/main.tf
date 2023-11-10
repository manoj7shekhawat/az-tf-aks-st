module "azure" {
  source = "./base"

  resource_groups = var.resource_groups
  aks             = var.aks
}