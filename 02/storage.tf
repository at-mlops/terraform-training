# Randomize part of the storage account name to ensure that a globally unique name is used
resource "random_string" "storage_account_name" {
  length  = 10
  special = false
  upper   = false
}

resource "azurerm_storage_account" "storage" {
  # TODO: replace "alice" with your first name (all lowercase)
  name = format("alice%s", random_string.storage_account_name.result)
  # ...
}
