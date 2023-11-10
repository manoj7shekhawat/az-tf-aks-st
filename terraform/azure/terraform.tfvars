resource_groups = {
  ne = {
    name     = "test_rg"
    location = "North Europe"
  }
}

aks = {
  name                            = "mshekhawat-aks"
  dns_prefix                      = "mshekhawataks"
  storage_account_key_secret_name = "storage-account-key-secret"

  default_node_pool = {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity = {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "TEST"
  }
}

storage = {
  name                            = "mshekhawatst"
  account_tier                    = "Standard"
  account_replication_type        = "LRS"

  share = {
    one = {
      name = "share-one"
      quota = 3
    }
    two = {
      name = "share-two"
      quota = 5
    }
  }

}