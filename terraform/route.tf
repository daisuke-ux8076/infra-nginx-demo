resource "aws_route_table" "company_route_table" {
  vpc_id = aws_vpc.company_vpc.id

  route {
    gateway_id = aws_internet_gateway.company_igw.id
    cidr_block = "0.0.0.0/0"
  }

  tags = {
    Name = "company-route-table"
  }
}

resource "aws_route_table_association" "company_rta" {
  route_table_id = aws_route_table.company_route_table.id
  subnet_id      = aws_subnet.public_subnet.id
}