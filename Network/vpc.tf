resource "aws_vpc" "terra_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = "true" #gives you an internal domain name
  enable_dns_hostnames = "true" #gives you an internal host name
  tags = {
    Name = "terra-vpc"
  }
}