variable "subnet_id" {
  description = "Subnet ID where EC2 instance will be deployed"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ec2_sg_id" {
  description = "Security group ID for EC2"
  type        = string
}

variable "tags" {
  description = "Common tags applied to resources"
  type        = map(string)
}

