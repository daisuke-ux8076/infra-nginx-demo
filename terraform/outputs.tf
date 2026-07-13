output "elastic_ip" {
  description = "Elastic IP address of the EC2 instance"
  value       = aws_eip.company_eip.public_ip
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.company_ec2.id
}

output "public_dns" {
  description = "EC2 Instance Public DNS"
  value       = aws_instance.company_ec2.public_dns
}