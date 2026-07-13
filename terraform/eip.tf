resource "aws_eip" "company_eip" {
  tags = {
    Name = "company-eip"
  }
}


resource "aws_eip_association" "company_eip_association" {
  instance_id   = aws_instance.company_ec2.id
  allocation_id = aws_eip.company_eip.id
}