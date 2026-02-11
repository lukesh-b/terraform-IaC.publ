output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.web.id
}

output "elastic_ip" {
  description = "Elastic IP address of EC2"
  value       = aws_eip.this.public_ip
}

output "private_ip" {
  description = "Private IP address of EC2"
  value       = aws_instance.web.private_ip
}

