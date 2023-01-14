#######################################################################################
# Variables Main                                                                      #
#######################################################################################
variable "rg" {
  type    = string
  default = "network-udr-labs-rg"
}
variable "stg" {
  type    = string
  default = "netstoragelog"
}
#########################################################################################
# Networks                                                                              #
#########################################################################################
variable "vnetname" {
  type    = string
  default = "vamota-vnet"
}
variable "subnet1" {
  type    = string
  default = "subnet1"
}
variable "subnet2" {
  type    = string
  default = "subnet2"
}
variable "subnet3" {
  type    = string
  default = "subnet3"
}
variable "subnet4" {
  type    = string
  default = "subnet4"
}
variable "subnet5" {
  type    = string
  default = "AzureBastionSubnet"
}
#########################################################################################
# Virtual Machines                                                                      #
#########################################################################################
variable "vm1-nic" {
  type    = string
  default = "vm1-nva-nic1"
}
variable "vm2-nic" {
  type    = string
  default = "vm1-nva-nic2"
}
variable "vm3-nic" {
  type    = string
  default = "vm3-nic"
}
variable "vm4-nic" {
  type    = string
  default = "vm4-nic"
}
variable "vm1" {
  type    = string
  default = "vm1-nva"
}
variable "vm2" {
  type    = string
  default = "vm2"
}
variable "vm3" {
  type    = string
  default = "vm3"
}
variable "vm4" {
  type    = string
  default = "vm4"
}