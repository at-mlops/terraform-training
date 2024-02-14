data "azurerm_storage_account" "storage" {
  name                = coalesce(var.storage_account_name, local.default_storage_account_name)
  resource_group_name = var.rg_name
}

resource "azurerm_storage_container" "container" {
  name                  = local.full_container_name
  storage_account_name  = data.azurerm_storage_account.storage.name
  container_access_type = "blob"

  metadata = data.azurerm_storage_account.storage.name == local.default_storage_account_name ? {
    reuse_storage_account = "yes"
    } : {
    storage_account = "mine"
  }
}
