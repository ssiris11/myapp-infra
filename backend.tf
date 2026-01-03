terraform {
  backend "azurerm" {
    resource_group_name  = "siri-python-app-rg"
    storage_account_name = "strgbackendstate"
    container_name       = "backendfile"
    key                  = "myapp-dev.tfstate"
  }
}
