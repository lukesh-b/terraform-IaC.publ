output "vpc_id" {
  value = module.network.vpc_id
}

output "ec2_public_ip" {
  value = module.compute.elastic_ip
}

output "alb_dns_name" {
  value = module.load_balancer.alb_dns_name
}

