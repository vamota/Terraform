#########################################################################################
# We strongly recommend using the required_providers block to set the                   #
# Azure Provider source and version being used                                          #             #
#########################################################################################
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  # backend "azurerm" {
  #   resource_group_name  = "rg-terraform"
  #   storage_account_name = "stgvamota"
  #   container_name       = "tfcontainer"
  #   key                  = "terraform.tfsate"
  # }
}
# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "rg" {
  name     = var.rg
  location = "eastus2"
  tags = {
    labs = "network"
    env  = "labs"
  }
}
resource "azurerm_storage_account" "stg" {
  name                     = var.stg
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_replication_type = "LRS"
  account_tier             = "Standard"
}