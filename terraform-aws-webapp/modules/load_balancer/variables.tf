variable "project_name" {
  description = "Project name"
  type        = string
}

variable "subnet_ids" {
  description = "Subnets where ALB will be deployed"
  type        = list(string)
}

variable "alb_sg_id" {
  description = "Security group ID for ALB"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "instance_id" {
  description = "EC2 instance ID to attach to target group"
  type        = string
}

variable "tags" {
  description = "Common tags applied to resources"
  type        = map(string)
}

