resource "aws_route_table" "terra-RT-public" {
  vpc_id = aws_vpc.terra_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terra-gw.id
  }
}

resource "aws_route_table_association" "public-RT-association-1" {
  subnet_id      = aws_subnet.terra-subnet-public-1.id
  route_table_id = aws_route_table.terra-RT-public.id
}

resource "aws_route_table_association" "public-RT-association-2" {
  subnet_id      = aws_subnet.terra-subnet-public-2.id
  route_table_id = aws_route_table.terra-RT-public.id
}
