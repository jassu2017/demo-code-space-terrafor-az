variable "environment" {
    type = string
    description = "The name of the environment"
    default = "dev"
  
}

variable "storage_disk" {
    type = number
    description = "The storage disk size os"
    default = 80
  
}

variable "is_delete" {
    type = bool
    description = "The value to delete the disk after vm termibation or not"
    default = true
  
}

variable "allowed_locations" {
    type = list(string)
    description = "list of allwoed locations"
    default = [ "West Europe", "North Europe", "East US" ]
  
}

variable "allowed_tags" {
    type = map(string)
    description = "tags to apply to resource"
    default = {
      "environment" = "stage"
      "managed_by" = "terraform"
      "department" = "devops"
    }
  
}

# Tuple type
variable "network_config" {
  type        = tuple([string, string, number])
  description = "Network configuration (VNET address, subnet address, subnet mask)"
  default     = ["10.0.0.0/16", "10.0.2.0", 24]
}

#only unique elements
variable "allowed_vm_sizes" {
  type        = list(string)
  description = "Allowed VM sizes"
  default     = ["Standard_DS1_v2", "Standard_DS2_v2", "Standard_DS3_v2"]
}


# Object type
variable "vm_config" {
  type = object({
    size         = string
    publisher    = string
    offer        = string
    sku          = string
    version      = string
  })
  description = "Virtual machine configuration"
  default = {
    size         = "Standard_DS1_v2"
    publisher    = "Canonical"
    offer        = "0001-com-ubuntu-server-jammy"
    sku          = "22_04-lts"
    version      = "latest"
  }
}

#variable "azurerm_account_name" {
 # type = list(string)
  #description = "storage_ac_name"
  #default = [ "techtutorialbyp" , "techtutorialbyp1"]
  
#}

variable "azurerm_account_name" {
  type = set(string)
  description = "storage_ac_name"
  default = [ "techtutorialbyp" , "techtutorialbyp1"]
  
}