variable "rg" {
  type = string
}

variable "location" {
  type = string
}

variable "aks" {
  type = object({

    name                            = string
    dns_prefix                      = string
    storage_account_key_secret_name = string

    default_node_pool = object({
      name       = string
      node_count = number
      vm_size    = string
    })

    identity = object({
      type = string
    })

    tags = any
  })
}

variable "storage_account_name" {
  type = string
}

variable "storage_primary_access_key" {
  type = string
}

variable "initial_mode" {
  type = bool
}