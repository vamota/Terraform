#########################################################################################
# Resource Groups                                                                       #
#########################################################################################
variable "rgname1" {
  type    = string
  default = "network-rg"
}
variable "rgname2" {
  type    = string
  default = "webservers-rg"
}
variable "rgname3" {
  type    = string
  default = "dbservers-rg"
}
variable "rgname4" {
  type    = string
  default = "terraform-rg"
}
variable "rgname5" {
  type    = string
  default = "addcs-rg"
}
#########################################################################################
# Virtual Network Variables                                                             #
#########################################################################################
variable "vnetname" {
  type    = string
  default = "hub-vnet"
}
variable "spokename1" {
  type    = string
  default = "dev-spoke-vnet"
}
variable "spokename2" {
  type    = string
  default = "prod-spoke-vnet"
}
variable "vngwname" {
  type    = string
  default = "vngw"
}
variable "gwsubnet" {
  type    = string
  default = "GatewaySubnet"
}
variable "devspokesubnet" {
  type    = string
  default = "dev-subnet"
}
variable "prodspokesubnet" {
  type    = string
  default = "prod-subnet"
}
variable "bastionsubnet" {
  type    = string
  default = "AzureBastionSubnet"
}
variable "dcssubnet" {
  type    = string
  default = "adds-subnet"
}
variable "vngpipname" {
  type    = string
  default = "vngw-pip"
}
variable "peering1" {
  type    = string
  default = "dev-spoke-to-vnethub"
}
variable "peering2" {
  type    = string
  default = "prod-spoke-to-vnethub"
}

#########################################################################################
# Network Security Group Variables                                                      #
#########################################################################################

variable "nsg-websubnet" {
  type    = string
  default = "nsg-websubnet"
}
variable "nsg-dbsubnet" {
  type    = string
  default = "nsg-dbsubnet"
}
#########################################################################################
# Storage Variables                                                                     #
#########################################################################################
variable "stgname1" {
  type    = string
  default = "tfstoragelog"
}
variable "stgname2" {
  type    = string
  default = "netstoragelog"
}
variable "stgcont" {
  type    = string
  default = "stgcontlog"
}
#########################################################################################
# Virtual Machines Variables                                                            #
#########################################################################################
variable "vm-webname1" {
  type    = string
  default = "vm-webapp01"
}
variable "vm-nic1" {
  type    = string
  default = "vm-webapp01-nic"
}

variable "vm-webname2" {
  type    = string
  default = "vm-webapp02"
}
variable "vm-nic2" {
  type    = string
  default = "vm-webapp02-nic"
}
variable "vm-dbname1" {
  type    = string
  default = "vm-db01"
}
variable "vm-nic3" {
  type    = string
  default = "vm-webdbname1-nic"
}
variable "vm-dcname1" {
  type    = string
  default = "vm-dc01"
}
variable "vm-nic4" {
  type    = string
  default = "vm-dc01-nic"
}
variable "vm-dcname2" {
  type    = string
  default = "vm-dc02"
}
variable "vm-nic5" {
  type    = string
  default = "vm-dc02-nic"
}
