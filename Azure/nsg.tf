################################################################################
# Network Security Group                                                       #
################################################################################

# resource "azurerm_network_security_group" "nsg-websubnet" {
#   name                = var.nsg-websubnet
#   location            = azurerm_resource_group.rgname.location
#   resource_group_name = azurerm_resource_group.rgname.name
#   security_rule = [
#     {
#       name                       = "App_Allow"
#       priority                   = 100
#       direction                  = "Inbound"
#       access                     = "Allow"
#       protocol                   = "Tcp"
#       source_port_range          = "*"
#       destination_port_range     = "*"
#       source_address_prefix      = "*"
#       destination_address_prefix = "*"
#     }
#   ]
# }

# # Network security groups
# resource "azurerm_network_security_group" "nsg-dbsubnet" {
#   name                = var.nsg-dbsubnet
#   location            = azurerm_resource_group.rgname.location
#   resource_group_name = azurerm_resource_group.rgname.name
#   security_rule = [
#     {
#       name                       = "DB_Allow"
#       priority                   = 100
#       direction                  = "Inbound"
#       access                     = "Allow"
#       protocol                   = "Tcp"
#       source_port_range          = "*"
#       destination_port_range     = "*"
#       source_address_prefix      = "*"
#       destination_address_prefix = "*"
#     }
#   ]
# }