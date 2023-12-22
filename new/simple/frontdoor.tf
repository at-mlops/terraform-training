resource "azurerm_cdn_profile" "cdn_profile" {
  name                = "workshop-cdn"
  location            = "westeurope"
  resource_group_name = data.azurerm_resource_group.rg.name
  sku                 = "Standard_Verizon"
}

resource "azurerm_cdn_endpoint" "workshop" {
  name                = "attfworkshop"
  profile_name        = azurerm_cdn_profile.cdn_profile.name
  location            = "westeurope"
  resource_group_name = data.azurerm_resource_group.rg.name
  origin_host_header  = azurerm_storage_account.storage_account.primary_web_host
  origin_path         = "/web"

  origin {
    name      = "workshop"
    host_name = azurerm_storage_account.storage_account.primary_web_host
  }
}
