output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_id" {
  value = module.subnet.subnet_id
}

output "security_group_id" {
  value = module.security_group.security_group_id
}

output "ec2_instance_id" {
  value = module.ec2_instance.instance_id
}
