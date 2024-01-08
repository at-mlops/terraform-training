resource "random_string" "storage_account_name" {
  length  = 10
  special = false
  upper   = false
}

# Use the this for the storage account name and replace "alice" with your first name (lowercase)
# name = format("alice%s", random_string.storage_account_name.result)

# resource "azurerm_storage_account" "storage" {
# ...
# }
