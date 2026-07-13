resource "aws_internet_gateway" "company_igw" {
  vpc_id = aws_vpc.company_vpc.id

  tags = {
    Name = "company-igw"
  }
}