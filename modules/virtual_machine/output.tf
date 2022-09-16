output "my_storage_account" {
  value = azurerm_storage_account.my_storage_account
}
output "example_ssh" {
  value = tls_private_key.example_ssh
  sensitive = true
}
output "my_terraform_vm" {
  value = azurerm_linux_virtual_machine.my_terraform_vm
}