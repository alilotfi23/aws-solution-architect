output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.subnets.public_subnet_id
}

output "private_subnet_id" {
  value = module.subnets.private_subnet_id
}
