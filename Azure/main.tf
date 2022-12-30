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
resource "azurerm_resource_group" "rgname1" {
  name     = var.rgname1
  location = "eastus2"
  tags = {
    method = "iac-terraform"
    env    = "dev"
  }
}

resource "azurerm_resource_group" "rgname2" {
  name     = var.rgname2
  location = "eastus2"
  tags = {
    method = "iac-terraform"
    env    = "dev"
  }
}
resource "azurerm_resource_group" "rgname3" {
  name     = var.rgname3
  location = "eastus2"
  tags = {
    method = "iac-terraform"
    env    = "dev"
  }
}


resource "azurerm_resource_group" "rgname4" {
  name     = var.rgname4
  location = "eastus2"
  tags = {
    method = "iac-terraform"
    env    = "dev"
  }
}

resource "azurerm_resource_group" "rgname5" {
  name     = var.rgname5
  location = "eastus2"
  tags = {
    method = "iac-terraform"
    env    = "dev"
  }
}

