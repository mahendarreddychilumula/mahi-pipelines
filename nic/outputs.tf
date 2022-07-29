output "nicid" {
    value = azurerm_network_interface.mahi_nic.id
  
}
output "private_ip" {
    value = azurerm_network_interface.mahi_nic.private_ip_address
  
}