#-----------------------------------------------------------------------------------------------------------------
# Create Transit VNET
resource "azurerm_resource_group" "transit" {
  #name     = "${var.global_prefix}${var.transit_prefix}-rg"
  name     = var.hubnetresourcegroup
  location = var.location
}

module "vnet" {
  source              = "./modules/vnet/"
  #name                = "${var.transit_prefix}-vnet"
  name                = "hub-ncus-palofw-vnet-01"
  address_space       = var.transit_vnet_cidr
  subnet_names        = var.transit_subnet_names
  subnet_prefixes     = var.transit_subnet_cidrs
  location            = var.location
  resource_group_name = azurerm_resource_group.transit.name
}
