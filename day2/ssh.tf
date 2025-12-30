resource "tls_private_key" "example_ssh" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_file" "private_key" {
  content         = tls_private_key.example_ssh.private_key_pem
  filename        = "${path.module}/myserver_key.pem"
  file_permission = "0600" # secure permission so only you can read it
}

output "ssh_command" {
  value = "ssh -i myserver_key.pem adminuser@${azurerm_linux_virtual_machine.example.public_ip_address}"
}