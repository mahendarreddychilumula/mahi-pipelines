variable "resource_group_name" {
 type = string
 description = "resorce group name" 
}
variable "resource_group_location" {
 type = string
 description = "resorce group location" 
}
variable "vnet_name" {
 type = string
 description = "vnet name"
}
variable "vnet_addres_space" {
 type = list
 description = "vnet_addres_space"
}
variable "address_prefixes" {
    type = list
    description = "address_prefixes_of subnet1"
  
}
variable "subnet1_name" {
 type = string
 description = "name of the subnet" 
}
variable "nic" {
    type = string
    description = "nic_name"
  }
  variable "ip_name" {
     description = "ip_name"
    
  }