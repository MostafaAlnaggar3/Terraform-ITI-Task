resource "aws_key_pair" "terraform_key_pair" {
  key_name   = "terraform_key_pair"
  public_key = tls_private_key.rsa-key.public_key_openssh
  tags = {
    Name = "terraform_key_pair"
  }
}

# to generate private key
resource "tls_private_key" "rsa-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}
