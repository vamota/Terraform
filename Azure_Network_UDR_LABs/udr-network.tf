################################################################################
# Route Table                                                                  #
################################################################################
resource "azurerm_route_table" "rtb1" {
  name                = "rtb1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
resource "azurerm_route" "rt1" {
  name                   = "route1"
  resource_group_name    = azurerm_resource_group.rg.name
  route_table_name       = azurerm_route_table.rtb1.name
  address_prefix         = "10.10.1.96/27"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = "10.10.1.4"

}
resource "azurerm_route_table" "rtb2" {
  name                = "rtb2"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
resource "azurerm_route" "rt2" {
  name                   = "route2"
  resource_group_name    = azurerm_resource_group.rg.name
  route_table_name       = azurerm_route_table.rtb2.name
  address_prefix         = "10.10.1.64/27"
  next_hop_type          = "VirtualAppliance"
  next_hop_in_ip_address = "10.10.1.36"
}