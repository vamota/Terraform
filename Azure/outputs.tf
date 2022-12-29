output "rgname1" {
  value = azurerm_resource_group.rgname1.id
}
output "rgname2" {
  value = azurerm_resource_group.rgname2.id
}
output "rgname3" {
  value = azurerm_resource_group.rgname3.id
}
output "stgname" {
  value = azurerm_storage_account.stgname.id
}
output "vnetname" {
  value = azurerm_virtual_network.vnetname.id
}
output "dbsubnetname" {
  value = azurerm_subnet.dbsubnetname.id
}
output "websubnetname" {
  value = azurerm_subnet.websubnetname.id
}
output "devspokesubnet" {
   value = azurerm_subnet.devspokesubnet.id
}
output "prodspokesubnet" {
   value = azurerm_subnet.prodspokesubnet.id
}
output "stgcont" {
  value = azurerm_storage_container.stgcont.id
}
# output "nsg-websubnet" {
#   value = azurerm_network_security_group.nsg-websubnet.id
# }
# output "nsg-dbsubnet" {
#   value = azurerm_network_security_group.nsg-dbsubnet.id
# }

output "vm-webname1" {
  value = azurerm_windows_virtual_machine.vm-webname1.id
}

output "vm-webname2" {
  value = azurerm_windows_virtual_machine.vm-webname2.id
}
output "vm-dbname1" {
  value = azurerm_windows_virtual_machine.vm-dbname1.id
}
output "vm-dcname1" {
  value = azurerm_windows_virtual_machine.vm-dcname1.id
}
output "vm-dcname2" {
  value = azurerm_windows_virtual_machine.vvm-dcname2.id
}
output "vm-nic1" {
  value = azurerm_network_interface.vm-nic1.id
}
output "vm-nic2" {
  value = azurerm_network_interface.vm-nic2.id
}
output "vm-nic3" {
  value = azurerm_network_interface.vm-nic3.id
}
output "vm-nic4" {
  value = azurerm_network_interface.vm-nic4.id
}
output "vm-nic5" {
  value = azurerm_network_interface.vm-nic5
}

output "vngwname" {
  value = azurerm_virtual_network_gateway.vngwname.id
}

output "gwsubnet" {
  value = azurerm_subnet.gwsubnet.id
}
output "vngpipname" {
  value = azurerm_public_ip.vngpipname.id
}
output "spokename1" {
  value = azurerm_virtual_network.spokename1.id
}
output "spokename2" {
  value = azurerm_virtual_network.spokename2.id
}
output "dcssubnet" {
  value = azurerm_subnet.dcssubnet.id
}
