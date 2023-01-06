################################################################################
# Network Security Group                                                       #
################################################################################
resource "azurerm_network_security_group" "nsg1" {
  name                = "nsg1"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
resource "azurerm_network_security_rule" "rule1" {
  name                        = "Allow_3389_22"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22-3389"
  source_address_prefix       = "174.108.112.98"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.nsg1.name
}
################################################################################
# Network Security Group Subnet Associate                                      #
################################################################################
resource "azurerm_subnet_network_security_group_association" "ansg1" {
  subnet_id                 = azurerm_subnet.subnet3.id
  network_security_group_id = azurerm_network_security_group.nsg1.id
}
resource "azurerm_subnet_network_security_group_association" "ans2" {
  subnet_id                 = azurerm_subnet.subnet4.id
  network_security_group_id = azurerm_network_security_group.nsg1.id
}