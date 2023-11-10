terraform {
  required_version = ">= 1.5.7"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.80.0"
    }
  }
  backend "azurerm" {
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}