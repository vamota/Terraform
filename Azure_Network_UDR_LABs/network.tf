#########################################################################################
# Azure Virtal Network and Subnets                                                      #
#########################################################################################
resource "azurerm_virtual_network" "vnetname" {
  name                = var.vnetname
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.10.1.0/24"]
}
resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnetname.name
  address_prefixes     = ["10.10.1.0/27"]
}
resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnetname.name
  address_prefixes     = ["10.10.1.32/27"]
}
resource "azurerm_subnet" "subnet3" {
  name                 = var.subnet3
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnetname.name
  address_prefixes     = ["10.10.1.64/27"]

}
resource "azurerm_subnet" "subnet4" {
  name                 = var.subnet4
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnetname.name
  address_prefixes     = ["10.10.1.96/27"]
}
resource "azurerm_subnet" "subnet5" {
  name                 = var.subnet5
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnetname.name
  address_prefixes     = ["10.10.1.128/27"]
}

#########################################################################################
# Azure Bastion Network and Subnets                                                     #
#########################################################################################

resource "azurerm_public_ip" "pip" {
  name = "bastion-pip"
  allocation_method = "Static"
  sku = "Standard"
}

resource "azurerm_bastion_host" "name" {
  name = "bastionlabs"
  location = azurerm_resource_group.rg.location
  scale_units = ""
  sku = 
}