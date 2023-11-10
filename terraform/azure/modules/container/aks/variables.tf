variable "rg" {
  type = string
}

variable "location" {
  type = string
}

variable "aks" {
  type = object({

    name       = string
    dns_prefix = string

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