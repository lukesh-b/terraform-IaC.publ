aws_region   = "ap-southeast-2"
project_name = "webapp-dev"
environment  = "dev"

cidr_block = "10.0.0.0/16"

public_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

azs = [
  "ap-southeast-2a",
  "ap-southeast-2b"
]

instance_type = "t3.micro"

# Open for testing (can tighten later)
allowed_ssh_cidr = ["0.0.0.0/0"]

