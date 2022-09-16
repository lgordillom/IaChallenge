output "my_terraform_network" {
    value = azurerm_virtual_network.my_terraform_network

}
output "my_terraform_subnet" {
    value = azurerm_subnet.my_terraform_subnet
}
output "my_terraform_public_ip" {
    value = azurerm_public_ip.my_terraform_public_ip
}
output "my_terraform_nsg" {
    value = azurerm_network_security_group.my_terraform_nsg
}
output "my_terraform_nic" {
    value = azurerm_network_interface.my_terraform_nic
}
output "example" {
    value = azurerm_network_interface_security_group_association.example
  
}