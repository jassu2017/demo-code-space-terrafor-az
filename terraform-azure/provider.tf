terraform {
  required_version = ">=1.3.0"

  cloud {
    organization = "Terraform_World_25"
    workspaces {
      name = "azure-terraform-codespc"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
  }

}  
}

provider "azurerm" {
  features {

  }
  
}