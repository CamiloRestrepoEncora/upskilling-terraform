resource "tls_private_key" "my_ssh_key_pair" {
  algorithm = "RSA"
  rsa_bits  = 2048
}

# Create AWS Key Pair resource
resource "aws_key_pair" "my_key_pair" {
  key_name   = var.instance_keypair
  public_key = tls_private_key.my_ssh_key_pair.public_key_openssh
}
