# Zdecydowanie zalecamy użycie bloku `required_providers` do określenia 
# źródła i wersji dostawcy Azure, z którego korzystasz
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.74.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.9.0"
    }
  }
  backend "azurerm" {
  }
}

provider "azurerm" {
  features {}
}
