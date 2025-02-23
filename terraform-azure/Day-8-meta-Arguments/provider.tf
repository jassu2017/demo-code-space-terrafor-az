terraform {
  required_version = ">=1.9.0"

  cloud {
    organization = "Terraform_World_25"
    workspaces {
      name = "azure-terraform-codespc"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.8.0"
  }

}  
}

provider "azurerm" {
  features {

  }
  
}