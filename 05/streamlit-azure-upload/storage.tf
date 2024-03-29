data "azurerm_storage_account" "storage_account" {
  name                = var.storage_account_name
  resource_group_name = var.rg_name
}

data "azurerm_storage_container" "container" {
  name                 = var.storage_container_name
  storage_account_name = var.storage_account_name
}

locals {
  current_timestamp = timestamp()
  # Extract the date part (YYYY-MM-DD) from the current timestamp
  current_date = formatdate("YYYY-MM-DD", local.current_timestamp)
  # Construct the start of the day in RFC3339 format (YYYY-MM-DDT00:00:00Z)
  start_of_day = "${local.current_date}T00:00:00Z"
}

data "azurerm_storage_account_blob_container_sas" "sas" {
  connection_string = data.azurerm_storage_account.storage_account.primary_connection_string
  https_only        = true

  start  = timeadd(timestamp(), "-1h")
  expiry = timeadd(timestamp(), "48h")

  permissions {
    read   = true
    add    = true
    create = true
    write  = true
    delete = true
    list   = true
  }
}
