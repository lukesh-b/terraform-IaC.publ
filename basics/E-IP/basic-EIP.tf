############################################
# Elastic IP for Load Balancer / EC2
############################################

resource "aws_eip" "lb" {
  domain = "vpc"
}

############################################
# Outputs
############################################

output "public_ip" {
  description = "Public IPv4 address assigned to the Elastic IP"
  value       = aws_eip.lb.public_ip
}

output "service_endpoint" {
  description = "Service endpoint exposed on port 8080"
  value       = "https://${aws_eip.lb.public_ip}:8080"
}

output "elastic_ip_details" {
  description = "Full Elastic IP resource attributes"
  value       = aws_eip.lb
}

