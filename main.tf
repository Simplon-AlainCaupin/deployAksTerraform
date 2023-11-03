# Fichier prinicpal pour la création du RG

provider "azurerm" {
  features {}
}

module "briefterra-lain" {
  source                = "./module"
  resource_group_name   = var.rgbriefterra-lain.name
  vnet_name             = var.vnetbriefterra-lain.name
  subnet_name           = var.subnetbriefterra-lain.name
}
