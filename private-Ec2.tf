resource "aws_instance" "terra-app" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.terraform_key_pair.key_name
  subnet_id              = module.Network.private_subnet_1_id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  tags                   = { Name = "terra-app" }
}

