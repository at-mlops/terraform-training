resource "azurerm_storage_account" "storage" {
  name                     = local.storage_account_name
  resource_group_name      = var.rg_name
  location                 = "GermanyWestCentral"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    creator = var.username
  }
}
