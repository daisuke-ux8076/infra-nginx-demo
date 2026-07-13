resource "aws_instance" "company_ec2" {
  vpc_security_group_ids = [aws_security_group.company_sg.id]
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = "company-key"

  tags = {
    Name = "company-ec2"
  }
}