##################################################################################
# Virtual Machine Linux                                                          #
##################################################################################
resource "azurerm_network_interface" "vm1-nic" {
  name                = var.vm1-nic
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet1.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_virtual_machine" "vm1" {
  name = var.vm1
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  vm_size = "Standard_B2s"
  network_interface_ids = [
    azurerm_network_interface.vm1-nic.id
  ]
  storage_image_reference {
    publisher = "Canonical"
    offer = "0001-com-ubuntu-server-focal"
    sku = "20_04-lts-gen2"
    version = "latest"
  }
  storage_os_disk {
    name = "vm1-osdisk"
    caching = "ReadWrite"
    create_option = "fromImage"
    managed_disk_type = "Standard_LRS"
    disk_size_gb = "30"
  }
  os_profile {
    computer_name = var.vm1
    admin_username = "ssoadmin"
    admin_password = "demo@pass123"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
}
##################################################################################
# Virtual Machine Windows                                                        #
##################################################################################
resource "azurerm_network_interface" "vm2-nic" {
  name                = var.vm2-nic
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet2.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm2" {
  name                = var.vm2
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B2s"
  admin_username      = "demouser"
  admin_password      = "demo@pass123"
  network_interface_ids = [
    azurerm_network_interface.vm2-nic.id,
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
##################################################################################
# Virtual Machine Windows                                                        #
##################################################################################
resource "azurerm_network_interface" "vm3-nic" {
  name                = var.vm3-nic
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet3.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_windows_virtual_machine" "vm3" {
  name                = var.vm3
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_B2s"
  admin_username      = "demouser"
  admin_password      = "demo@pass123"
  network_interface_ids = [
    azurerm_network_interface.vm3-nic.id,
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
