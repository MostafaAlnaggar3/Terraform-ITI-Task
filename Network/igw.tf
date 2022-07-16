resource "aws_internet_gateway" "terra-gw" {
  vpc_id = aws_vpc.terra_vpc.id

  tags = {
    Name = "terra-gw"
  }
}