aws_region   = "ap-southeast-2"
project_name = "webapp-prod"
environment  = "prod"

cidr_block = "10.10.0.0/16"

public_subnets = [
  "10.10.1.0/24",
  "10.10.2.0/24"
]

azs = [
  "ap-southeast-2a",
  "ap-southeast-2b"
]

instance_type = "t3.medium"

# Restricted SSH for production
allowed_ssh_cidr = ["203.0.113.10/32"]

