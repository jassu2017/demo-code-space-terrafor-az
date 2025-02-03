resource "azurerm_resource_group" "rg-tf" {
  name     = var.rg_name
  location = "West Europe"
}