resource "random_uuid" "storage_account_name" {
}

resource "azurerm_storage_account" "storage_account" {
  name                     = format("workshop%s", substr(replace(random_uuid.storage_account_name.result, "-", ""), 0, 10))
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "web" {
  name                  = "web"
  storage_account_name  = azurerm_storage_account.storage_account.name
  container_access_type = "blob"
}

resource "azurerm_storage_blob" "blob" {
  name                   = "test.txt"
  content_type           = "text/plain"
  storage_account_name   = azurerm_storage_account.storage_account.name
  storage_container_name = azurerm_storage_container.web.name
  type                   = "Block"
  source                 = "test.txt"
}
