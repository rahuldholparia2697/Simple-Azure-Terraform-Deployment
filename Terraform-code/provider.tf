terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.63.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "Azure-DevOps-RG"
    storage_account_name = "devstorageaccount2026"
    container_name       = "githubcontainer"
    key                  = "terraform.tfstate"

    # Tells the backend to also use the Managed Identity
    use_msi = true
  }
}

provider "azurerm" {
  features {}
  use_msi         = true
  subscription_id = "99c0acb2-ff53-4ac2-8e99-071411ed7ee4"
}