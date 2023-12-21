resource "azurerm_log_analytics_workspace" "app" {
  name                = "app-workspace"
  location            = var.location
  resource_group_name = var.rg_name
  #sku                 = "PerGB2018"
  #retention_in_days   = 7
}

resource "azurerm_container_app_environment" "env" {
  name                       = "app-environment"
  location                   = var.location
  resource_group_name        = var.rg_name
  log_analytics_workspace_id = azurerm_log_analytics_workspace.app.id
}

resource "azurerm_container_app" "app" {
  name                         = "app"
  container_app_environment_id = azurerm_container_app_environment.env.id
  resource_group_name          = var.rg_name
  revision_mode                = "Single"

  template {
    container {
      name = "examplecontainerapp"
      #image  = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
      #image = "nginx:alpine"
      image = format("%s/streamlit:latest", azurerm_container_registry.acr.login_server)

      cpu    = 0.25
      memory = "0.5Gi"
    }
  }

  registry {
    server   = azurerm_container_registry.acr.login_server
    identity = azurerm_user_assigned_identity.app.id
  }

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.app.id]
  }

  ingress {
    allow_insecure_connections = false
    external_enabled           = true
    target_port                = 8501
    transport                  = "auto"
    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
}
