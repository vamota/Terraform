#########################################################################################
# Virtual Machine DC01                                                                  #
#########################################################################################
resource "azurerm_network_interface" "vm-nic4" {
  name                = var.vm-nic4
  location            = azurerm_resource_group.rgname2.location
  resource_group_name = azurerm_resource_group.rgname2.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.dcssubnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_windows_virtual_machine" "vm-dcname1" {
  name                = var.vm-dcname1
  resource_group_name = azurerm_resource_group.rgname2.name
  location            = azurerm_resource_group.rgname2.location
  size                = "Standard_B2s"
  admin_username      = "demouser"
  admin_password      = "demo@pass123"
  network_interface_ids = [
    azurerm_network_interface.vm-nic4.id,
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}
#########################################################################################
# Virtual Machine DC02                                                                  #
#########################################################################################
resource "azurerm_network_interface" "vm-nic5" {
  name                = var.vm-nic5
  location            = azurerm_resource_group.rgname5.location
  resource_group_name = azurerm_resource_group.rgname5.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.dcssubnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_windows_virtual_machine" "vm-dcname2" {
  name                = var.vm-dcname2
  resource_group_name = azurerm_resource_group.rgname5.name
  location            = azurerm_resource_group.rgname5.location
  size                = "Standard_B2s"
  admin_username      = "demouser"
  admin_password      = "demo@pass123"
  network_interface_ids = [
    azurerm_network_interface.vm-nic5.id,
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}
