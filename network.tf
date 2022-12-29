# Azure Virtal Network and Subnets
resource "azurerm_virtual_network" "vnetname" {
  name                = var.vnetname
  location            = azurerm_resource_group.rgname1.location
  resource_group_name = azurerm_resource_group.rgname1.name
  address_space       = ["10.0.0.0/22"]
}
resource "azurerm_subnet" "gwsubnet" {
  name                 = var.gwsubnet
  resource_group_name  = azurerm_resource_group.rgname1.name
  virtual_network_name = azurerm_virtual_network.vnetname.name
  address_prefixes     = ["10.0.0.0/27"]
}
resource "azurerm_subnet" "bastionsubnet" {
  name                 = var.bastionsubnet
  resource_group_name  = azurerm_resource_group.rgname1.name
  virtual_network_name = azurerm_virtual_network.vnetname.name
  address_prefixes     = ["10.0.1.0/26"]
}
# Azure Virtual Spokes
resource "azurerm_virtual_network" "spokename1" {
  name                = var.spokename1
  location            = azurerm_resource_group.rgname1.location
  resource_group_name = azurerm_resource_group.rgname1.name
  address_space       = ["10.120.0.0/22"]
}
resource "azurerm_subnet" "devspokesubnet" {
  name                 = var.devspokesubnet
  resource_group_name  = azurerm_resource_group.rgname1.name
  virtual_network_name = azurerm_virtual_network.spokename1.name
  address_prefixes     = ["10.120.0.0/24"]
}
resource "azurerm_virtual_network" "spokename2" {
  name                = var.spokename2
  location            = azurerm_resource_group.rgname1.location
  resource_group_name = azurerm_resource_group.rgname1.name
  address_space       = ["172.16.0.0/22"]
}
resource "azurerm_subnet" "prodspokesubnet" {
  name                 = var.prodspokesubnet
  resource_group_name  = azurerm_resource_group.rgname1.name
  virtual_network_name = azurerm_virtual_network.spokename2.name
  address_prefixes     = ["172.16.0.0/24"]
}
resource "azurerm_virtual_network_peering" "spokename1" {
  name                      = "dev-spoke-to-vnethub"
  resource_group_name       = azurerm_resource_group.rgname1.name
  virtual_network_name      = azurerm_virtual_network.vnetname.name
  remote_virtual_network_id = azurerm_virtual_network.spokename1.id
}

resource "azurerm_virtual_network_peering" "spokename2" {
  name                      = "prod-spoke-to-vnethub"
  resource_group_name       = azurerm_resource_group.rgname1.name
  virtual_network_name      = azurerm_virtual_network.vnetname.name
  remote_virtual_network_id = azurerm_virtual_network.spokename2.id
}

###### Azure Virtual Network Gateway
resource "azurerm_public_ip" "vngpipname" {
  name                = var.vngpipname
  location            = azurerm_resource_group.rgname1.location
  resource_group_name = azurerm_resource_group.rgname1.name
  allocation_method   = "Dynamic"
}
resource "azurerm_virtual_network_gateway" "vngwname" {
  name                = var.vngwname
  location            = azurerm_resource_group.rgname1.location
  resource_group_name = azurerm_resource_group.rgname1.name

  type     = "Vpn"
  vpn_type = "RouteBased"

  active_active = false
  enable_bgp    = false
  sku           = "Basic"

  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.vngpipname.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.gwsubnet.id
  }
}

