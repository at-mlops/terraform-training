resource "random_uuid" "acrname" {
}

resource "azurerm_container_registry" "acr" {
  name                = format("workshop%s", replace(random_uuid.acrname.result, "-", ""))
  resource_group_name = var.rg_name
  location            = data.azurerm_resource_group.rg.location
  sku                 = "Premium"
  admin_enabled       = false
}
