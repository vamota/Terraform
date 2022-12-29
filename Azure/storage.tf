#########################################################################################
# Storage Accounts                                                                      #
#########################################################################################
resource "azurerm_storage_account" "stgname1" {
  name                     = var.stgname1
  resource_group_name      = azurerm_resource_group.rgname4.name
  location                 = azurerm_resource_group.rgname4.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
}
resource "azurerm_storage_account" "stgname2" {
  name                     = var.stgname2
  resource_group_name      = azurerm_resource_group.rgname4.name
  location                 = azurerm_resource_group.rgname4.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
}

resource "azurerm_storage_container" "stgcont" {
  name                 = "tfcontainer"
  storage_account_name = azurerm_storage_account.stgname.name
}