module "app" {
  source                 = "git::https://github.com/ghaering/streamlit-azure-upload.git//terraform"
  rg_name                = var.rg_name
  location               = var.location
  storage_account_name   = azurerm_storage_account.storage.name
  storage_container_name = azurerm_storage_container.container.name
  resource_prefix        = var.username
}
