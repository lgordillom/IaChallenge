terraform {
  backend "azurerm" {
        resource_group_name  = "tfstate"
        storage_account_name = "tfstate3168"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
    }
  required_version = ">=0.12"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
   
  }
}

provider "azurerm" {
  features {}
}