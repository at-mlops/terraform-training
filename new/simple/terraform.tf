terraform {
  backend "azurerm" {
    resource_group_name  = "RG_at-mlops"
    storage_account_name = "atmlopstfstate"
    container_name       = "tfstate"
    key                  = "gerhard-simple.terraform.tfstate"
  }
}
