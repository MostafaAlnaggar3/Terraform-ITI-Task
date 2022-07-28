resource "aws_instance" "terra-bastion" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.terraform_key_pair.key_name
  subnet_id              = module.Network.public_subnet_1_id
  vpc_security_group_ids = [aws_security_group.ssh-allowed.id]
  tags                   = { Name = "terra-bastion" }

}

resource "null_resource" "print-bastion-ip" {
  # it will make depends on bastion 
  depends_on = [
    aws_instance.terra-bastion
  ]

  # to print public ip of the instance on your local host
  # provisioner "local-exec" {
  #   command = "echo ${aws_instance.terra-bastion.public_ip} > bastion-ip.txt"
  # }
}