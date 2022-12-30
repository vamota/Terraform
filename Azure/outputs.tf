#########################################################################################
# Resource Groups                                                                       #
#########################################################################################
output "rgname1" {
  value = azurerm_resource_group.rgname1.id
}
output "rgname2" {
  value = azurerm_resource_group.rgname2.id
}
output "rgname3" {
  value = azurerm_resource_group.rgname3.id
}
output "rgname4" {
  value = azurerm_resource_group.rgname4.id
}
output "rgname5" {
  value = azurerm_resource_group.rgname5.id
}
################################################################################
# Virtual Network                                                              #
################################################################################
output "vnetname" {
  value = azurerm_virtual_network.vnetname.id
}
output "spokename1" {
  value = azurerm_virtual_network.spokename1.id
}
output "spokename2" {
  value = azurerm_virtual_network.spokename2.id
}
output "devspokesubnet" {
   value = azurerm_subnet.devspokesubnet.id
}
output "prodspokesubnet" {
   value = azurerm_subnet.prodspokesubnet.id
}
output "dcssubnet" {
  value = azurerm_subnet.dcssubnet.id
}
output "gwsubnet" {
  value = azurerm_subnet.gwsubnet.id
}
output "vngpipname" {
  value = azurerm_public_ip.vngpipname.id
}
output "vngwname" {
  value = azurerm_virtual_network_gateway.vngwname.id
}
################################################################################
# Network Security Group                                                       #
################################################################################
# output "nsg-websubnet" {
#   value = azurerm_network_security_group.nsg-websubnet.id
# }
# output "nsg-dbsubnet" {
#   value = azurerm_network_security_group.nsg-dbsubnet.id
# }
################################################################################
# Virtual Machines                                                             #
################################################################################
output "vm-webname1" {
  value = azurerm_windows_virtual_machine.vm-webname1.id
}
output "vm-nic1" {
  value = azurerm_network_interface.vm-nic1.id
}
output "vm-webname2" {
  value = azurerm_windows_virtual_machine.vm-webname2.id
}
output "vm-nic2" {
  value = azurerm_network_interface.vm-nic2.id
}
output "vm-dbname1" {
  value = azurerm_windows_virtual_machine.vm-dbname1.id
}
output "vm-nic3" {
  value = azurerm_network_interface.vm-nic3.id
}
output "vm-dcname1" {
  value = azurerm_windows_virtual_machine.vm-dcname1.id
}
output "vm-nic4" {
  value = azurerm_network_interface.vm-nic4.id
}
output "vm-dcname2" {
  value = azurerm_windows_virtual_machine.vm-dcname2.id
}
output "vm-nic5" {
  value = azurerm_network_interface.vm-nic5
}
################################################################################
# Storage                                                                      #
################################################################################
output "stgname1" {
  value = azurerm_storage_account.stgname1.id
}
output "stgname2" {
  value = azurerm_storage_account.stgname2.id
}
output "stgcont" {
  value = azurerm_storage_container.stgcont.id
}