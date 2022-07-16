resource "aws_subnet" "terra-subnet-public-1" {

  vpc_id                  = aws_vpc.terra_vpc.id
  cidr_block              = var.public_subnet_1_cidr_block
  map_public_ip_on_launch = "true" # it makes this a public subnet
  availability_zone       = "${var.region}a"
  tags = {
    Name = "terra-subnet-public-1"
  }
}

resource "aws_subnet" "terra-subnet-public-2" {

  vpc_id                  = aws_vpc.terra_vpc.id
  cidr_block              = var.public_subnet_2_cidr_block
  map_public_ip_on_launch = "true" # it makes this a public subnet
  availability_zone       = "${var.region}b"
  tags = {
    Name = "terra-subnet-public-2"
  }
}

resource "aws_subnet" "terra-subnet-private-1" {

  vpc_id            = aws_vpc.terra_vpc.id
  cidr_block        = var.private_subnet_1_cidr_block
  availability_zone = "${var.region}a"
  tags = {
    Name = "terra-subnet-private-1"
  }
}

resource "aws_subnet" "terra-subnet-private-2" {
  vpc_id            = aws_vpc.terra_vpc.id
  cidr_block        = var.private_subnet_2_cidr_block
  availability_zone = "${var.region}b"
  tags = {
    Name = "terra-subnet-private-2"
  }
}