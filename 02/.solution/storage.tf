resource "random_string" "storage_account_name" {
  length  = 10
  special = false
  upper   = false
}

# Use the this for the storage account name and replace "alice" with your first name (lowercase)
# name = format("alice%s", random_string.storage_account_name.result)

resource "azurerm_storage_account" "storage" {
  name                     = format("alice%s", random_string.storage_account_name.result)
  resource_group_name      = var.rg_name
  location                 = "GermanyWestCentral"
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    purpose = "workshop"
  }
}
