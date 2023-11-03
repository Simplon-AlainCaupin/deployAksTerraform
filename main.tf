# Fichier prinicpal pour la création du RG

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rgbriefterralain" {
  name     = var.resource_group_name
  location = "East US" # Replace with your desired region
}

resource "azurerm_virtual_network" "vnetbriefterralain" {
  name                = var.vnet_name
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rgbriefterralain.location
  resource_group_name = azurerm_resource_group.rgbriefterralain.name
}

resource "azurerm_subnet" "subnetbriefterralain" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.rgbriefterralain.name
  virtual_network_name = azurerm_virtual_network.vnetbriefterralain.name
  address_prefixes     = ["10.0.1.0/24"]
}
