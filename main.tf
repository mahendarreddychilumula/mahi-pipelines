provider "azurerm" {
  features {}
  }

  module rg1 {
         source    = "./rg1"

resource_group_name = var.resource_group_name
resource_group_location = var.resource_group_location
}
module vnet {
    source = "./vnet"
    depends_on = [
      module.rg1
    ]
    
    vnet_name = var.vnet_name
    resource_group_name = var.resource_group_name
    vnet_addres_space = var.vnet_addres_space
}
  
module subnet {
    source = "./subnet"
    depends_on = [
      module.vnet   
    ]
    subnet_name = var.subnet1_name
   resource_group_name = var.resource_group_name
   vnet_name =  var.vnet_name 
    address_prefixes = var.address_prefixes
    }
module nic {
source = "./nic"
depends_on = [
  module.subnet
]
nic = var.nic
resource_group_name = var.resource_group_name
location = var.resource_group_location
ip_name = var.ip_name
subnet_id = module.subnet.subnet_id
}



