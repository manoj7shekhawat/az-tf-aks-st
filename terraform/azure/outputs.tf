output "azure_core_resource_group_ids" {
  value = values(module.azure.core_resource_groups).*.id
}