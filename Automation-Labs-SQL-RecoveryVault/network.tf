#########################################################################################
# Azure Virtal Network and Subnets                                                      #
#########################################################################################
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.10.1.0/24"]
}
resource "azurerm_subnet" "dbsubnet" {
  name                 = var.dbsubnet
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.10.1.0/26"]
}
resource "azurerm_public_ip" "bpip" {
  name = "mybastion"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method = "static"
  sku = "Stantadar"
}
resource "azurerm_bastion_host" "bastion" {
  name = "labs-bastion"
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  scale_units = "2"
  sku = "Basic"
  ip_configuration {
    name = "mybastion"
    subnet_id = azurerm_subnet.dbsubnet.id
    public_ip_address_id = azurerm_public_ip.bpip.id
  }
}