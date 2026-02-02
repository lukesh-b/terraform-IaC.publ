variable "aws_region" {
  description = "AWS region where resources will be deployed"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Name of an existing EC2 key pair"
  type        = string
}

variable "project_name" {
  description = "Project name used for resource tagging"
  type        = string
  default     = "terraform-aws-prj"
}

