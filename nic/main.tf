data "azurerm_resource_group" "testrg"{
    name =  var.resource_group_name
}


resource "azurerm_network_interface" "mahi_nic"{
    name = var.nic
    location = var.location
    resource_group_name =  data.azurerm_resource_group.testrg.name
  ip_configuration {
    name = var.ip_name
    subnet_id = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}