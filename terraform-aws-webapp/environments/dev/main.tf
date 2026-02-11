terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

locals {
  tags = {
    Project     = var.project_name
    Environment = var.environment
  }
}

module "network" {
  source = "../../modules/network"

  project_name  = var.project_name
  environment   = var.environment
  cidr_block    = var.cidr_block
  public_subnets = var.public_subnets
  azs           = var.azs
}

module "security" {
  source = "../../modules/security"

  project_name     = var.project_name
  vpc_id           = module.network.vpc_id
  allowed_ssh_cidr = var.allowed_ssh_cidr
  tags             = local.tags
}

module "compute" {
  source        = "../../modules/compute"
  subnet_id     = module.network.public_subnet_ids[0]
  instance_type = var.instance_type
  ec2_sg_id     = module.security.ec2_sg_id
  tags          = local.tags
}

module "load_balancer" {
  source      = "../../modules/load_balancer"
  project_name = var.project_name
  subnet_ids  = module.network.public_subnet_ids
  alb_sg_id   = module.security.alb_sg_id
  vpc_id      = module.network.vpc_id
  instance_id = module.compute.instance_id
  tags        = local.tags
}

