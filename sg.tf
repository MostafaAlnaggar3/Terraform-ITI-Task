# ================================allow ssh=================================

resource "aws_security_group" "ssh-allowed" {
  vpc_id = module.Network.vpc_id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    # This means, all ip address are allowed to ssh ! 
  }

  tags = {
    Name = "ssh-allowed"
  }
}


# # ================================ RDS SG =================================
# resource "aws_security_group" "rds-sg" {
#   vpc_id = module.Network.vpc_id

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = -1
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/16"]
#     # This means, all ip address are allowed to ssh ! 
#   }

#   ingress {
#     from_port   = 3306
#     to_port     = 3306
#     protocol    = "tcp"
#     cidr_blocks = ["10.0.0.0/16"]
#   }

#   tags = {
#     Name = "terraform-example-rds-security-group"
#   }
# }

