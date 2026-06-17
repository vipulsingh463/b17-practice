terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.44.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "4ff5875c-9724-4b2e-8ac9-3c94a8388c9a"
}
