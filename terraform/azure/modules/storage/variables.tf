variable "rg" {
  type = string
}

variable "location" {
  type = string
}

variable "storage" {
  type = object({
    name                     = string
    account_tier             = string
    account_replication_type = string

    share = map(object({
      name  = string
      quota = number
    }))
  })
}