output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "public_ip_address" {
  value = module.virtual_machine.my_terraform_vm.public_ip_address
}

output "tls_private_key" {
  value     = module.virtual_machine.example_ssh.private_key_pem
  sensitive = true
}