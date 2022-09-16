locals {
  assetname   = "iac-challenge"
  location    = "eastus2"

  resource_name = format("%s-%s", local.assetname, local.location)
}

resource "azurerm_resource_group" "rg" {
  location = local.location
  name     = "${local.resource_name}-rg-1"
}

module "network" {
  source = "./modules/network"
  resource_group_name = azurerm_resource_group.rg.name
  resource_group_location = local.location
  assetname=local.assetname

} 
module "virtual_machine" {
  source = "./modules/virtual_machine"
  resource_group_name = azurerm_resource_group.rg.name
  resource_group_location = local.location
  network_interface_ids_id = module.network.my_terraform_nic.id
  
}