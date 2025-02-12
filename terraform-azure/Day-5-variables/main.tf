
resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

# variable "environment" {
#   type = string
#   description = "The name of the environment"
#   default = "dev"
  
# }


locals {

      environment = "UAT"
      lob = "Retail"
      stage = "Beta"

  }


resource "azurerm_storage_account" "example" {
 
  name                     = "techtutorial101"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location # implicit dependency
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    #environment = var.environment
    environment = local.environment
    LOB = local.lob
    STAGE = local.stage
  }
}