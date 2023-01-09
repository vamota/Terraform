#########################################################################################
# Virtual Machine Database SQL                                                          #
#########################################################################################
resource "azurerm_network_interface" "vm-nic1" {
  name                = var.vm-nic1
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.dbsubnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_windows_virtual_machine" "vmdbname" {
  name                = var.vmdbname
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  size                = "Standard_D2s_v3"
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
    publisher = "microsoftsqlserver"
    offer     = "sql2017-ws2019"
    sku       = "sqldev-gen2"
    version   = "latest"
  }
}