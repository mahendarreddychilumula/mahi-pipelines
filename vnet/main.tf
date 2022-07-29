data "azurerm_resource_group" "testrg"{
    name =  var.resource_group_name
}

resource"azurerm_virtual_network""vnet1"{
    name = var.vnet_name
    resource_group_name = data.azurerm_resource_group.testrg.name
    location =  data.azurerm_resource_group.testrg.location
    address_space = var.vnet_addres_space

}