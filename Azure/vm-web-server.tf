#########################################################################################
# Virtual Machine Webserver01                                                           #
#########################################################################################
resource "azurerm_network_interface" "vm-nic1" {
  name                = var.vm-nic1
  location            = azurerm_resource_group.rgname2.location
  resource_group_name = azurerm_resource_group.rgname2.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.websubnetname.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_windows_virtual_machine" "vm-webname1" {
  name                = var.vm-webname1
  resource_group_name = azurerm_resource_group.rgname2.name
  location            = azurerm_resource_group.rgname2.location
  size                = "Standard_B2s"
  admin_username      = "demouser"
  admin_password      = "demo@pass123"
  network_interface_ids = [
    azurerm_network_interface.vm-nic1.id,
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
# Virtual Machine Webserver02                                                           #
#########################################################################################
resource "azurerm_network_interface" "vm-nic2" {
  name                = var.vm-nic2
  location            = azurerm_resource_group.rgname2.location
  resource_group_name = azurerm_resource_group.rgname2.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.websubnetname.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_windows_virtual_machine" "vm-webname2" {
  name                = var.vm-webname2
  resource_group_name = azurerm_resource_group.rgname2.name
  location            = azurerm_resource_group.rgname2.location
  size                = "Standard_B2s"
  admin_username      = "demouser"
  admin_password      = "demo@pass123"
  network_interface_ids = [
    azurerm_network_interface.vm-nic2.id,
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
