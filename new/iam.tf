resource "azurerm_user_assigned_identity" "app" {
  location            = data.azurerm_resource_group.rg.location
  name                = "app"
  resource_group_name = data.azurerm_resource_group.rg.name
}

resource "azurerm_role_assignment" "app_acr_pull" {
  scope                = azurerm_container_registry.acr.id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_user_assigned_identity.app.principal_id
}
