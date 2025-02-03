variable "rg_name" {
    default = "terra-codespc-rg"
  
}

output "azurerm_resource_group" {
  value = azurerm_resource_group.rg-tf.id
}