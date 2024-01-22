resource "azurerm_storage_account" "storage" {
  name                     = local.storage_account_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    creator = var.username
  }
}

resource "azurerm_storage_container" "container" {
  name                  = "uploads"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "blob"
}
