

resource "azurerm_resource_group" "example" {
  name     = "${var.environment}-resources"
  location = var.allowed_locations[1]
}



resource "azurerm_storage_account" "example" {
 # count                    = length(var.azurerm_account_name)
  for_each =              var.azurerm_account_name
  name                     = each.value 
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
