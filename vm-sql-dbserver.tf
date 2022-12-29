# Windows DB Server01
resource "azurerm_network_interface" "vm-nic3" {
  name                = var.vm-nic3
  location            = azurerm_resource_group.rgname3.location
  resource_group_name = azurerm_resource_group.rgname3.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.dbsubnetname.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_windows_virtual_machine" "vm-dbname1" {
  name                = var.vm-dbname1
  resource_group_name = azurerm_resource_group.rgname3.name
  location            = azurerm_resource_group.rgname3.location
  size                = "Standard_D2s_v3"
  admin_username      = "demouser"
  admin_password      = "demo@pass123"
  network_interface_ids = [
    azurerm_network_interface.vm-nic3.id,
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