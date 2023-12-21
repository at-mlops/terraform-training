output "app_fqdn" {
  value = azurerm_container_app.app.ingress.0.fqdn
}

output "acr_name" {
  value = azurerm_container_registry.acr.name
}
