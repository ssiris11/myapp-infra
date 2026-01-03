//variable "cae_id" {}
//variable "image" {}

resource "azurerm_container_app" "this" {
  name                         = var.name
  resource_group_name          = var.resource_group_name
  container_app_environment_id = var.cae_id
  revision_mode                = "Single"

  template {
    container {
      name   = "app"
      image  = var.image
      cpu    = 0.5
      memory = "1Gi"
    }
  }

  ingress {
    external_enabled = true
    target_port      = 8080

    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
}

