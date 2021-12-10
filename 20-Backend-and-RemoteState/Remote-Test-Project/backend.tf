terraform {
  backend "azurerm" {
    resource_group_name  = "tstate"
    storage_account_name = "tstate7779"
    container_name       = "tstate"
    key                  = "projecttest/terraform.tfstate"
  }
}
