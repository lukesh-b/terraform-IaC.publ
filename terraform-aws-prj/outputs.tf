output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.this.public_ip
}

output "elastic_ip" {
  description = "Elastic IP associated with the EC2 instance"
  value       = aws_eip.this.public_ip
}

