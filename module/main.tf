provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rgbriefterralain" {
  name     = "briefterra-lain"
  location = "West Europe"
}

resource "azurerm_virtual_network" "vnetbriefterralain" {
  name                = "briefterra-lain-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rgbriefterralain.location
  resource_group_name = azurerm_resource_group.rgbriefterralain.name
}

resource "azurerm_subnet" "subnetbriefterralain" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.rgbriefterralain.name
  virtual_network_name = azurerm_virtual_network.vnetbriefterralain.name
  address_prefixes     = ["10.0.1.0/24"]
}
